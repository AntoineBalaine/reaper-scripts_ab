return {
  meta_command = {
    ["."] = "RepeatLastCommand",
    ["@"] = "PlayMacro",
    ["q"] = "RecordMacro",
  },
  timeline_motion = {
    ["0"] = "ProjectStart",
    ["f"] = "CursorToPlayCursor",
    ["["] = "TimeSelectionStart",
    ["]"] = "TimeSelectionEnd",
    ["<"] = "PrevMarker",
    [">"] = "NextMarker",
    ["<M-f>"] = "CursorToMouse",
    ["<CM-f>"] = "CursorToMouseAndSnap",
    ["<M-h>"] = "CursorLeft10Pix",
    ["<M-l>"] = "CursorRight10Pix",
    ["<M-H>"] = "CursorLeft40Pix",
    ["<M-L>"] = "CursorRight40Pix",
    ["h"] = "PrevBeat",
    ["l"] = "NextBeat",
    ["H"] = "PrevMeasure",
    ["L"] = "NextMeasure",
    ["<C-h>"] = "Prev4Beats",
    ["<C-l>"] = "Next4Beats",
    ["<C-H>"] = "Prev4Measures",
    ["<C-L>"] = "Next4Measures",
  },
  timeline_operator = {
    ["c"] = "Change",
    ["t"] = "Play",
    ["z"] = "ZoomHorizontal",
  },
  visual_timeline_command = {
    ["v"] = "SetModeNormal",
    ["o"] = "SwitchTimelineSelectionSide",
  },
  command = {
    ["v"] = "SetModeVisualTimeline",
    ["<ESC>"] = "Reset",
    ["<C-r>"] = "Redo",
    ["<return>"] = "StartStop",
    ["u"] = "Undo",
    ["T"] = "TransportPlay",
    ["F"] = "TransportPause",
    ["C"] = "TransportRecordOrStop",
    ["<M-T>"] = "CursorToMouseAndPlay",
    ["<CM-T>"] = "CursorToMouseAndPlaySnap",
    ["<M-t>"] = "PlayFromMouse",
    ["<C-t>"] = "StartStop",
    ["<C-;>"] = "MidiLearnLastTouchedFX",
    ["<M-m>"] = "ShowEnvelopeModulationLastTouchedFx",
    ["<C-g>"] = "FocusMain",
    ["<C-n>"] = "FxShowNextSel",
    ["<C-N>"] = "FxShowPrevSel",
    ["<C-p>"] = "FxShowPrevSel",
    ["<M-x>"] = "FxToggleShowAll",
    ["<M-X>"] = "ToggleFloatingWindows",
    ["<SPC>"] = { "+leader commands", {
      ["<SPC>"] = "ShowActionList",
      ["m"]= { "+markers", {
                ["n"] = "NextMarker",
                ["N"] = "PrevMarker",
                ["p"] = "PrevMarker",
      }},
      ["v"] = { "+time selection", {
                  ["v"] = "ToggleLoop",
      }},
      ["i"] = { "+items", {
                  ["j"] = "NextTake",
                  ["k"] = "PrevTake",
                  ["d"] = "DeleteActiveTake",
                  ["c"] = "CropToActiveTake",
                  ["h"] = "GrowItemLeft",
                  ["l"] = "GrowItemRight",
                  ["e"] = "OpenMidiEditor",
                  ["n"] = "ItemNormalize",
                  ["r"] = "ItemApplyFX",
                  ["g"] = "GroupItems",
      }},
      ["t"] = { "+track", {
                  ["x"] = "ShowTrackRouting",
                  ["R"] = "RenderTrack",
                  ["f"] = { "+freeze", {
                    ["f"] = "FreezeTrack",
                    ["u"] = "UnfreezeTrack",
                    ["s"] = "ShowTrackFreezeDetails"}},
                  ["s"] = "ToggleSolo",
                  ["m"] = "ToggleMute",
                  ["a"] = "CycleRecordMonitor",
                  ["i"] = "AddTrackVirtualInstrument",
                  ["o"] = "InsertTrack",
                  ["r"] = "RenameTrack",
                  ["c"] = "ColorTrack",
                  ["e"] = "SetTrackMidiAllChannels",
                  ["+"] = "IncreaseTrackHeight",
                  ["-"] = "DecreaseTrackHeight",
                  ["h"] = "MixerShowHideChildrenOfSelectedTrack",
                  ["F"] = "CycleTrackFolderState"}},
      ["f"] = { "+fx", {
                  ["id"] = "ClearFxChainInputCurrentTrack",
                  ["d"] = "ClearFxChainCurrentTrack",
                  ["a"] = "FxAdd",
                  ["p"] = "PasteFxChain",
                  ["i"] = "ViewFxChainInputCurrentTrack",
                  ["c"] = "FxChainToggleShow",
                  ["s"] = "FxToggleShowAll",
                  ["S"] = "FxCloseSel",
                  ["n"] = "FxShowNextSel",
                  ["p"] = "FxShowPrevSel",
                  ["N"] = "FxShowPrevSel",
                  ["b"] = "TrackToggleFXBypass",
                  ["1"] = "FxToggleShow1",
                  ["2"] = "FxToggleShow2",
                  ["3"] = "FxToggleShow3",
                  ["4"] = "FxToggleShow4",
                  ["5"] = "FxToggleShow5",
                  ["6"] = "FxToggleShow6",
                  ["7"] = "FxToggleShow7",
                  ["8"] = "FxToggleShow8",
      }},
      ["g"] = { "+global", {
                  ["s"] = {"+show", {
                             ["r"] = "ShowRoutingMatrix",
                             ["w"] = "ShowWiringDiagram",
                             ["p"] = "Preferences",
                  }},
                  ["dr"] = "ResetControlDevices",
                  ["a"] = "ClearAllRecordArm",
                  ["c"] = "CycleRippleEditMode",
                  ["S"] = "SnapToggle",
                  ["m"] = "ToggleMetronome",
                  ["f"] = {"+fx", {
                             ["x"] = "FxCloseAll",
                             ["c"] = "ViewFxChainMaster",
                  }},
                  ["t"] = { "+track", {
                      ["m"] = "ShowTrackManager",
                      ["s"] = "UnsoloAllTracks",
                      ["m"] = "UnmuteAllTracks",
                  }},
                  ["e"] = { "+envelope", {
                      ["s"] = "ToggleShowAllEnvelopeGlobal",
                      ["e"] = "ToggleEnvelopePointsMoveWithItems",
                      ["r"] = "SetGlobalEnvelopeModeTrimRead",
                      ["g"] = "SetGlobalEnvelopeModeLatch",
                      ["G"] = "SetGlobalEnvelopeModeLatchPreview",
                      ["l"] = "SetGlobalEnvelopeModeLatch",
                      ["L"] = "SetGlobalEnvelopeModeLatchPreview",
                      ["R"] = "SetGlobalEnvelopeModeRead",
                      ["t"] = "SetGlobalEnvelopeModeTouch",
                      ["w"] = "SetGlobalEnvelopeModeWrite",
                      ["S"] = "SetGlobalEnvelopeModeOff",
                  }},
      }},
      ["a"] = { "+arming", {
                  ["t"] = "ArmToggleSelected",
                  ["i"] = "Input",
                  ["o"] = "MidiOutput",
                  ["d"] = "MidiOverdub",
                  ["t"] = "MidiTouchReplace",
                  ["r"] = "MidiReplace",
                  ["m"] = "MonitorOnly",
                  ["f"] = "Input",
                  ["v"] = "MonitorOnly",
            }},
      ["e"] = { "+envelopes", {
                  ["s"] = "ToggleShowAllEnvelope",
                  ["h"] = "ToggleShowEnvelope",
                  ["v"] = "ToggleVolumeEnvelope",
                  ["p"] = "TogglePanEnvelope",
                  ["d"] = "DelSelEnvelope",
                  ["c"] = "ClearEnvelope",
                  ["C"] = "ClearAllEnvelope",
                  ["y"] = "CopySelEnvelope",
                  ["a"] = "ToggleArmAllEnvelope",
                  ["A"] = "ToggleArmEnvelope",
                  ["r"] = "SetEnvelopeModeTrimRead",
                  ["R"] = "SetEnvelopeModeRead",
                  ["G"] = "SetEnvelopeModeLatchPreview",
                  ["g"] = "SetEnvelopeModeLatch",
                  ["L"] = "SetEnvelopeModeLatchPreview",
                  ["l"] = "SetEnvelopeModeLatch",
                  ["t"] = "SetEnvelopeModeTouch",
                  ["w"] = "SetEnvelopeModeWrite",
            }},
      ["p"] = { "+project", {
                ["r"] = { "+render", {
                            ["."] = "RenderProjectWithLastSetting",
                            ["r"] = "RenderProject",
                        }},
                ["n"] = "NextTab",
                ["p"] = "PrevTab",
                ["s"] = "SaveProject",
                ["o"] = "OpenProject",
                ["c"] = "NewProjectTab",
                ["d"] = "CloseProject",
                ["x"] = "CleanProjectDirectory",
            }},
    }},
  },
}
