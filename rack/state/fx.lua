--[[
This class keeps track of an FX’s internal state (list of parameters, custom layouts, etc.)
Each FX represented in the parent `state` gets its own instance of this class, instantiated with `fx.new()`.
]]
local IniParse = require("parsers.Iniparse.IniParse")
local table_helpers = require("helpers.table")
local constants = require("helpers.constants")
local layout_enums = require("state.fx_layout_types")
local parameter = require("state.param")
local color_helpers = require("helpers.color_helpers")
local ColorSet = require("helpers.ColorSet")

---@class TrackFX
---@field createParamDetails fun(self: TrackFX, param: ParamData): ParamData
---@field createParams fun(self: TrackFX): params_list: ParamData[] , params_by_guid:table<string, ParamData>
---@field displaySettings FxDisplaySettings
---@field displaySettings_copy FxDisplaySettings|unknown|nil
---@field display_params ParamData[]
---@field editLayout fun(self: TrackFX)
---@field editing boolean = false
---@field enabled boolean|nil
---@field getDisplaySettings fun(self: TrackFX)
---@field guid string
---@field index integer
---@field name string|nil
---@field new fun(state: State, theme: Theme, index: integer, number: integer, guid: string): TrackFX
---@field number integer
---@field onEditLayoutClose fun(self: TrackFX, action: EditLayoutCloseAction)
---@field params_by_guid table<string, ParamData>
---@field params_list ParamData[]
---@field presetname string = ""
---@field removeParamDetails fun(self: TrackFX, param: ParamData)
---@field setSelectedParam fun(param: Parameter)|nil
---@field state State
---@field update fun(self: TrackFX)
---@field theme Theme

---@class TrackFX
local fx = {}
fx.__index = fx

---create a new fx instance,
---to store state and layout information
---@param state State
---@param theme Theme
---@param index integer
---@param number integer
---@param guid string
function fx.new(state, theme, index, number, guid)
    ---@type TrackFX
    local self = setmetatable({}, fx)
    self.state = state
    local _, name = reaper.TrackFX_GetFXName(self.state.Track.track, number)
    self.enabled = reaper.TrackFX_GetEnabled(self.state.Track.track, number)
    ---when fx is selected in the layoutEditor
    self.editing = false
    ---when fx is being edited,
    ---use this callback when user clicks on a param in the fx_box’s canvas
    ---@type fun(param: Parameter) | nil
    self.setSelectedParam = nil
    self.guid = guid
    self.name = name
    self.number = number
    self.index = index
    self.params_list, self.params_by_guid = self:createParams()
    self.display_params = {} ---@type ParamData[]
    self.theme = theme

    ---@class FxDisplaySettings
    ---@field background integer
    ---@field background_disabled integer
    ---@field background_offline integer
    ---@field borderColor integer
    ---@field buttonStyle table
    ---@field custom_Title nil
    ---@field edge_Rounding integer = 0
    ---@field grb_Rounding integer = 0
    ---@field param_Instance nil
    ---@field title_Clr integer = 255
    ---@field title_Width integer = 140
    ---@field window_Width integer = 280
    ---@field window_height integer = 240
    ---@field _is_collapsed boolean = false

    ---@type FxDisplaySettings
    self.displaySettings = {
        _is_collapsed       = false,
        background          = theme.colors.selcol_tr2_bg.color,
        background_disabled = theme.colors.group_15.color,
        background_offline  = theme.colors.col_mi_fades.color,
        borderColor         = theme.colors.col_gridlines2.color,
        buttonStyle         = {


            -- background = theme.colors.col_fadearm2.color,
            background = theme.colors.col_main_bg.color,
            background_disabled = theme.colors.group_15.color,
            background_offline = color_helpers.desaturate(theme.colors.col_mi_fades.color),
            -- text_enabled = theme.colors.col_toolbar_text_on.color,
            text_enabled = theme.colors.mcp_fx_normal.color,
            text_disabled = theme.colors.mcp_fx_bypassed.color,
            text_offline = theme.colors.mcp_fx_offlined.color,
        },
        custom_Title        = nil,
        edge_Rounding       = 0,
        grb_Rounding        = 0,
        param_Instance      = nil,
        title_Clr           = 0x000000FF,
        title_Width         = 220 - 80,
        window_Width        = constants.WINDOW_WIDTH,
        window_height       = constants.WINDOW_HEIGHT, -- TODO make this into a constant, accessible everywhere
    }
    self.displaySettings_copy = nil ---@type FxDisplaySettings|nil

    local _, presetname = reaper.TrackFX_GetPreset(self.state.Track.track, self.index - 1)
    if #presetname > 0 then
        self.presetname = presetname
    else
        self.presetname = nil
    end

    -- self.param_list
    -- number retval, number minval, number maxval = reaper.TrackFX_GetParam(MediaTrack track, integer fx, integer param)
    --
    -- ParamValue_At_Script_Start = r.TrackFX_GetParamNormalized(Track, FX_Idx, FxdCtx.FX[FxGUID][Fx_P].Num or 0)
    return self
end

---Check that the parse of the fx layout file
---contains all the expected properties in the object.
---@param parse table
local function isValidDisplaySettings(parse)
    if not parse.displaySettings
        or not parse.displaySettings.Edge_Rounding
        or not parse.displaySettings.Grb_Rounding
        or not parse.displaySettings.BgClr
        or not parse.displaySettings.Window_Width
        or not parse.displaySettings.Title_Width
        or not parse.displaySettings.Title_Clr
        or not parse.displaySettings.Custom_Title
        or not parse.displaySettings.Param_Instance
    then
        return false
    else
        return true
    end
end

---Pull any pre-saved layouts from the fx layouts.
---If there are none, the component will use the default.
function fx:getDisplaySettings()
    local file_name = self.state.project_directory .. self.name .. ".ini"
    ---@type table|nil
    local parse = IniParse:parse_file(file_name)
    if not parse then
        return
    elseif not isValidDisplaySettings(parse) then -- if file exists but doesn’t contain the expected content, it’s invalid
        reaper.MB(
            "invalid fx layout file " .. file_name,
            "Error", 0)
        return
    end
    self.displaySettings = parse.displaySettings ---@type FxDisplaySettings
    ---TODO possible optimization?
    --[[
What happens if user removes this fx but then re-adds it,
do we have to parse a second time for the same fx?
we could optionally just save the result of the parse somewhere until the next call.
    ]]
end

function fx:editLayout()
    --[[if user wants to edit the layout:
    Create a copy of the displaySettings, pass it to the editor and let the user edit the copy.
    Upon closing,
    if user saves, replace the original displaySettings with the copy, and write to file.
    if user closes without saving, replace the original displaySettings with the copy, but do no write to file
    if user discards, discard the copy.
    ]]
    self.displaySettings_copy = table_helpers.deepCopy(self.displaySettings)
end

---When user closes the layout editor,
---if user saves, replace the original displaySettings with the copy, and write to file.
---if user closes without saving, replace the original displaySettings with the copy, but do not write to file.
---if user discards, discard the copy.
---@param action EditLayoutCloseAction
function fx:onEditLayoutClose(action)
    if action == layout_enums.EditLayoutCloseAction.save then -- save
        self.displaySettings = self.displaySettings_copy
        local file_name = self.state.project_directory .. self.name .. ".ini"
        IniParse.save(file_name, self.displaySettings)
        self.displaySettings_copy = nil
    elseif action == layout_enums.EditLayoutCloseAction.close then -- close without saving
        self.displaySettings = self.displaySettings_copy
        self.displaySettings_copy = nil
    else -- discard
        self.displaySettings_copy = nil
    end
end

---query the list of params for the fx
---@return ParamData[] params_list
---@return table<string, ParamData> params_by_guid
function fx:createParams()
    local params_list = {} ---@type ParamData[]
    local params_by_guid = {} ---@type table<string, ParamData>

    local display = false
    for param_index = 0, reaper.TrackFX_GetNumParams(self.state.Track.track, self.number) - 1 do
        local rv, name = reaper.TrackFX_GetParamName(self.state.Track.track, self.number, param_index)
        local guid = reaper.genGuid(name .. param_index)
        if not rv then goto continue end
        ---ParamData is an intermediary datum for a param that's not being displayed.
        --
        --Basically we don't need to query the param's values if it's not displayed
        --so we only need its name and guid.
        ---@class ParamData
        ---@field details Parameter|nil
        ---@field display boolean = false
        ---@field guid string
        ---@field index integer
        ---@field name string
        ---@field _selected boolean is this param selected by the layout editor for editing

        ---@type ParamData
        local param = {
            index = param_index,
            name = name,
            guid = guid,
            display = display,
            details = nil,
            _selected = false
        }
        table.insert(params_list, param)
        params_by_guid[guid] = param
        ::continue::
    end
    -- don't display bypass in params list.
    local param = params_list[#params_list - 2]
    if param and param.name == "Bypass" then
        local bypass = table.remove(params_list, #params_list - 2)
        params_by_guid[bypass.guid] = nil
    end

    return params_list, params_by_guid
end

---query whether the fx is enabled,
---query the values of the displayed params
function fx:update()
    self.enabled = reaper.TrackFX_GetEnabled(self.state.Track.track, self.number)
    local _, presetname = reaper.TrackFX_GetPreset(self.state.Track.track, self.index - 1)
    if #presetname > 0 then
        if self.presetname ~= presetname then
            self.presetname = presetname
        end
    else
        if self.presetname then
            self.presetname = nil
        end
    end

    for _, param in ipairs(self.display_params) do
        if param.details then
            param.details:query_value()
        end
    end
end

---add param to list of displayed params
---query its value, create a param class for it
---@param param ParamData
function fx:createParamDetails(param)
    local new_param = parameter.new(self.state,
        param.index,
        self,
        param.guid,
        ColorSet.new(
            self.theme.colors.col_vuind2.color,
            self.theme.colors.col_vuind4.color,
            self.theme.colors.col_vuind3.color,
            0xFFFFFFFF
        ))
    param.details = new_param
    self.display_params[#self.display_params + 1] = param
    return param
end

---I’m having to run a linear sweep here to find the fx by guid in the list of displayed params.
---@param param ParamData
function fx:removeParamDetails(param)
    if param.details then
        param.details = nil
    end
    for i, fx_instance in ipairs(self.display_params) do
        if fx_instance.guid == param.guid then
            table.remove(self.display_params, i)
            break
        end
    end
end

return fx
