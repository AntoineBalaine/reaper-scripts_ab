---@class VariableDescription_byVar
---@field k string variable name
---@field v string description


---@class ThemeColor
---@field description string
---@field color integer

---@class ColorTable
---@field activetake_tag                ThemeColor Active media item take bar color
---@field areasel_fill                  ThemeColor Razor edit area fill
---@field areasel_outline               ThemeColor Razor edit area outline
---@field arrange_vgrid                 ThemeColor Empty arrange view area vertical grid shading
---@field auto_item_unsel               ThemeColor Envelope: Unselected automation item
---@field col_arrangebg                 ThemeColor Empty arrange view area
---@field col_buttonbg                  ThemeColor Button background
---@field col_cursor                    ThemeColor Edit cursor
---@field col_cursor2                   ThemeColor Edit cursor (alternate)
---@field col_env1                      ThemeColor Envelope: Volume (pre-FX)
---@field col_env10                     ThemeColor Envelope: Send pan 2
---@field col_env11                     ThemeColor Envelope: Audio hardware output volume
---@field col_env12                     ThemeColor Envelope: Audio hardware output pan
---@field col_env13                     ThemeColor Envelope: FX parameter 1
---@field col_env14                     ThemeColor Envelope: FX parameter 2
---@field col_env15                     ThemeColor Envelope: FX parameter 3
---@field col_env16                     ThemeColor Envelope: FX parameter 4
---@field col_env2                      ThemeColor Envelope: Volume
---@field col_env3                      ThemeColor Envelope: Pan (pre-FX)
---@field col_env4                      ThemeColor Envelope: Pan
---@field col_env5                      ThemeColor Envelope: Master playrate
---@field col_env6                      ThemeColor Envelope: Master tempo
---@field col_env7                      ThemeColor Envelope: Width / Send volume
---@field col_env8                      ThemeColor Envelope: Send pan
---@field col_env9                      ThemeColor Envelope: Send volume 2
---@field col_envlane1_divline          ThemeColor Envelope lane divider line (odd tracks)
---@field col_envlane2_divline          ThemeColor Envelope lane divider line (even tracks)
---@field col_explorer_sel              ThemeColor Media explorer selection
---@field col_explorer_seledge          ThemeColor Media explorer selection edge
---@field col_fadearm                   ThemeColor Fader background when automation recording
---@field col_fadearm2                  ThemeColor Fader background when automation playing
---@field col_fadearm3                  ThemeColor Fader background when in inactive touch/latch
---@field col_gridlines                 ThemeColor Grid lines (in between beats)
---@field col_gridlines2                ThemeColor Grid lines (start of measure)
---@field col_gridlines3                ThemeColor Grid lines (start of beats)
---@field col_main_3dhl                 ThemeColor Main window 3D highlight
---@field col_main_3dsh                 ThemeColor Main window 3D shadow
---@field col_main_bg                   ThemeColor Main window/transport background (v1, not sure about this)
---@field col_main_bg2                  ThemeColor Main window/transport background
---@field col_main_editbk               ThemeColor Themed window edit background
---@field col_main_resize2              ThemeColor Main window pane resize mouseover
---@field col_main_text                 ThemeColor Themed window text
---@field col_main_text2                ThemeColor Main window/transport text
---@field col_main_textshadow           ThemeColor Main window text shadow (ignored if too close to text color)
---@field col_mi_bg                     ThemeColor Media item background (odd tracks)
---@field col_mi_bg2                    ThemeColor Media item background (even tracks)
---@field col_mi_fade2                  ThemeColor Media item edges of controls
---@field col_mi_fades                  ThemeColor Media item fade/volume controls
---@field col_mi_label                  ThemeColor Media item label
---@field col_mi_label_float            ThemeColor Floating media item label
---@field col_mi_label_float_sel        ThemeColor Floating media item label (selected)
---@field col_mi_label_sel              ThemeColor Media item label (selected)
---@field col_mixerbg                   ThemeColor Empty mixer list area
---@field col_offlinetext               ThemeColor Media item offline text
---@field col_peaksedge                 ThemeColor Media item peaks edge highlight (odd tracks)
---@field col_peaksedge2                ThemeColor Media item peaks edge highlight (even tracks)
---@field col_peaksedgesel              ThemeColor Media item peaks edge highlight when selected (odd tracks)
---@field col_peaksedgesel2             ThemeColor Media item peaks edge highlight when selected (even tracks)
---@field col_peaksfade                 ThemeColor Media item peaks when active in crossfade editor (fade-out)
---@field col_peaksfade2                ThemeColor Media item peaks when active in crossfade editor (fade-in)
---@field col_routinghl1                ThemeColor Routing matrix row highlight
---@field col_routinghl2                ThemeColor Routing matrix column highlight
---@field col_seltrack                  ThemeColor Selected track control panel background
---@field col_seltrack2                 ThemeColor Unselected track control panel background (enabled with a checkbox above)
---@field col_stretchmarker             ThemeColor Media item stretch marker line
---@field col_stretchmarker_b           ThemeColor Media item stretch marker handle edge
---@field col_stretchmarker_h0          ThemeColor Media item stretch marker handle (1x)
---@field col_stretchmarker_h1          ThemeColor Media item stretch marker handle (>1x)
---@field col_stretchmarker_h2          ThemeColor Media item stretch marker handle (<1x)
---@field col_stretchmarker_text        ThemeColor Media item stretch marker text
---@field col_stretchmarker_tm          ThemeColor Media item transient guide handle
---@field col_tcp_text                  ThemeColor Track panel text
---@field col_tcp_textsel               ThemeColor Track panel (selected) text
---@field col_tl_bg                     ThemeColor Timeline background
---@field col_tl_bgsel                  ThemeColor Time selection color
---@field col_tl_bgsel2                 ThemeColor Timeline background (in loop points)
---@field col_tl_fg                     ThemeColor Timeline foreground
---@field col_tl_fg2                    ThemeColor Timeline foreground (secondary markings)
---@field col_toolbar_frame             ThemeColor Toolbar frame when floating or docked
---@field col_toolbar_text              ThemeColor Toolbar button text
---@field col_toolbar_text_on           ThemeColor Toolbar button enabled text
---@field col_tr1_bg                    ThemeColor Track background (odd tracks)
---@field col_tr1_divline               ThemeColor Track divider line (odd tracks)
---@field col_tr1_itembgsel             ThemeColor Media item background selected (odd tracks)
---@field col_tr1_peaks                 ThemeColor Media item peaks (odd tracks)
---@field col_tr1_ps2                   ThemeColor Media item peaks when selected (odd tracks)
---@field col_tr2_bg                    ThemeColor Track background (even tracks)
---@field col_tr2_divline               ThemeColor Track divider line (even tracks)
---@field col_tr2_itembgsel             ThemeColor Media item background selected (even tracks)
---@field col_tr2_peaks                 ThemeColor Media item peaks (even tracks)
---@field col_tr2_ps2                   ThemeColor Media item peaks when selected (even tracks)
---@field col_tracklistbg               ThemeColor Empty track list area
---@field col_trans_bg                  ThemeColor Transport status background
---@field col_trans_fg                  ThemeColor Transport status text
---@field col_transport_editbk          ThemeColor Transport edit background
---@field col_tsigmark                  ThemeColor Time signature change marker
---@field col_vubot                     ThemeColor VU meter bottom
---@field col_vuclip                    ThemeColor VU meter clip indicator
---@field col_vudoint                   ThemeColor Theme has interlaced VU meters
---@field col_vuind1                    ThemeColor VU (indicator) - no signal
---@field col_vuind2                    ThemeColor VU (indicator) - low signal
---@field col_vuind3                    ThemeColor VU (indicator) - med signal
---@field col_vuind4                    ThemeColor VU (indicator) - hot signal
---@field col_vuintcol                  ThemeColor VU meter interlace/edge color
---@field col_vumid                     ThemeColor VU meter middle
---@field col_vumidi                    ThemeColor VU meter midi activity
---@field col_vutop                     ThemeColor VU meter top
---@field docker_bg                     ThemeColor Tab control background
---@field docker_selface                ThemeColor Tab control selected tab
---@field docker_shadow                 ThemeColor Tab control shadow
---@field docker_text                   ThemeColor Tab control text
---@field docker_text_sel               ThemeColor Tab control text selected tab
---@field docker_unselface              ThemeColor Tab control unselected tab
---@field env_item_mute                 ThemeColor Envelope: Item take mute
---@field env_item_pan                  ThemeColor Envelope: Item take pan
---@field env_item_pitch                ThemeColor Envelope: Item take pitch
---@field env_item_vol                  ThemeColor Envelope: Item take volume
---@field env_sends_mute                ThemeColor Envelope: Send mute
---@field env_track_mute                ThemeColor Envelope: Mute
---@field env_trim_vol                  ThemeColor Envelope: Trim Volume
---@field explorer_grid                 ThemeColor Media explorer grid, markers
---@field explorer_pitchtext            ThemeColor Media explorer pitch detection text
---@field fadearea_color                ThemeColor Media item fade full area fill color
---@field fadezone_color                ThemeColor Media item fade quiet zone fill color
---@field genlist_bg                    ThemeColor Window list background
---@field genlist_fg                    ThemeColor Window list text
---@field genlist_grid                  ThemeColor Window list grid lines
---@field genlist_hilite                ThemeColor Window list highlighted text
---@field genlist_hilite_sel            ThemeColor Window list highlighted selected text
---@field genlist_selbg                 ThemeColor Window list selected row
---@field genlist_selfg                 ThemeColor Window list selected text
---@field genlist_seliabg               ThemeColor Window list selected row (inactive)
---@field genlist_seliafg               ThemeColor Window list selected text (inactive)
---@field group_0                       ThemeColor Group #1
---@field group_1                       ThemeColor Group #2
---@field group_10                      ThemeColor Group #11
---@field group_11                      ThemeColor Group #12
---@field group_12                      ThemeColor Group #13
---@field group_13                      ThemeColor Group #14
---@field group_14                      ThemeColor Group #15
---@field group_15                      ThemeColor Group #16
---@field group_16                      ThemeColor Group #17
---@field group_17                      ThemeColor Group #18
---@field group_18                      ThemeColor Group #19
---@field group_19                      ThemeColor Group #20
---@field group_2                       ThemeColor Group #3
---@field group_20                      ThemeColor Group #21
---@field group_21                      ThemeColor Group #22
---@field group_22                      ThemeColor Group #23
---@field group_23                      ThemeColor Group #24
---@field group_24                      ThemeColor Group #25
---@field group_25                      ThemeColor Group #26
---@field group_26                      ThemeColor Group #27
---@field group_27                      ThemeColor Group #28
---@field group_28                      ThemeColor Group #29
---@field group_29                      ThemeColor Group #30
---@field group_3                       ThemeColor Group #4
---@field group_30                      ThemeColor Group #31
---@field group_31                      ThemeColor Group #32
---@field group_32                      ThemeColor Group #33
---@field group_33                      ThemeColor Group #34
---@field group_34                      ThemeColor Group #35
---@field group_35                      ThemeColor Group #36
---@field group_36                      ThemeColor Group #37
---@field group_37                      ThemeColor Group #38
---@field group_38                      ThemeColor Group #39
---@field group_39                      ThemeColor Group #40
---@field group_4                       ThemeColor Group #5
---@field group_40                      ThemeColor Group #41
---@field group_41                      ThemeColor Group #42
---@field group_42                      ThemeColor Group #43
---@field group_43                      ThemeColor Group #44
---@field group_44                      ThemeColor Group #45
---@field group_45                      ThemeColor Group #46
---@field group_46                      ThemeColor Group #47
---@field group_47                      ThemeColor Group #48
---@field group_48                      ThemeColor Group #49
---@field group_49                      ThemeColor Group #50
---@field group_5                       ThemeColor Group #6
---@field group_50                      ThemeColor Group #51
---@field group_51                      ThemeColor Group #52
---@field group_52                      ThemeColor Group #53
---@field group_53                      ThemeColor Group #54
---@field group_54                      ThemeColor Group #55
---@field group_55                      ThemeColor Group #56
---@field group_56                      ThemeColor Group #57
---@field group_57                      ThemeColor Group #58
---@field group_58                      ThemeColor Group #59
---@field group_59                      ThemeColor Group #60
---@field group_6                       ThemeColor Group #7
---@field group_60                      ThemeColor Group #61
---@field group_61                      ThemeColor Group #62
---@field group_62                      ThemeColor Group #63
---@field group_63                      ThemeColor Group #64
---@field group_7                       ThemeColor Group #8
---@field group_8                       ThemeColor Group #9
---@field group_9                       ThemeColor Group #10
---@field guideline_color               ThemeColor Editing guide line color
---@field inactive_take_overlay_col     ThemeColor Inactive take overlay color
---@field io_3dhl                       ThemeColor I/O window 3D highlight
---@field io_3dsh                       ThemeColor I/O window 3D shadow
---@field io_text                       ThemeColor I/O window text
---@field item_grouphl                  ThemeColor Media item edge when selected via grouping
---@field locked_overlay_col            ThemeColor Locked track/item overlay color
---@field marker                        ThemeColor Markers
---@field marker_lane_bg                ThemeColor Marker lane background
---@field marker_lane_text              ThemeColor Marker lane text
---@field marquee_fill                  ThemeColor Marquee fill
---@field marquee_outline               ThemeColor Marquee outline
---@field marqueezoom_fill              ThemeColor Marquee zoom fill
---@field marqueezoom_outline           ThemeColor Marquee zoom outline
---@field mcp_fx_bypassed               ThemeColor FX insert text: bypassed
---@field mcp_fx_normal                 ThemeColor FX insert text: normal
---@field mcp_fx_offlined               ThemeColor FX insert text: offline
---@field mcp_fxparm_bypassed           ThemeColor FX parameter text: bypassed
---@field mcp_fxparm_normal             ThemeColor FX parameter text: normal
---@field mcp_fxparm_offlined           ThemeColor FX parameter text: offline
---@field mcp_list_scrollbar            ThemeColor List scrollbar (mixer panel)
---@field mcp_list_scrollbar_mouseover  ThemeColor List scrollbar mouseover (mixer panel)
---@field mcp_send_midihw               ThemeColor Sends text: MIDI hardware
---@field mcp_sends_levels              ThemeColor Sends level
---@field mcp_sends_muted               ThemeColor Sends text: muted
---@field mcp_sends_normal              ThemeColor Sends text: normal
---@field midi_ccbut                    ThemeColor MIDI editor CC lane add/remove buttons
---@field midi_ccbut_arrow              ThemeColor MIDI editor CC lane button arrow
---@field midi_ccbut_text               ThemeColor MIDI editor CC lane button text
---@field midi_editcurs                 ThemeColor MIDI editor cursor
---@field midi_endpt                    ThemeColor MIDI editor end marker
---@field midi_grid1                    ThemeColor MIDI editor grid line (between beats)
---@field midi_grid2                    ThemeColor MIDI editor grid line (start of measure)
---@field midi_grid3                    ThemeColor MIDI editor grid line (start of beats)
---@field midi_gridh                    ThemeColor MIDI editor CC horizontal line
---@field midi_gridhc                   ThemeColor MIDI editor CC horizontal center line
---@field midi_inline_trackbg1          ThemeColor MIDI inline background color (naturals)
---@field midi_inline_trackbg2          ThemeColor MIDI inline background color (sharps/flats)
---@field midi_itemctl                  ThemeColor MIDI editor note controls
---@field midi_leftbg                   ThemeColor MIDI piano pane background
---@field midi_notebg                   ThemeColor MIDI editor note, unselected (midi_note_colormap overrides)
---@field midi_notefg                   ThemeColor MIDI editor note, selected (midi_note_colormap overrides)
---@field midi_notemute                 ThemeColor MIDI editor note, muted, unselected (midi_note_colormap overrides)
---@field midi_notemute_sel             ThemeColor MIDI editor note, muted, selected (midi_note_colormap overrides)
---@field midi_noteon_flash             ThemeColor MIDI piano key note-on flash
---@field midi_ofsn                     ThemeColor MIDI editor note (offscreen)
---@field midi_ofsnsel                  ThemeColor MIDI editor note (offscreen, selected)
---@field midi_pkey1                    ThemeColor MIDI piano key color (naturals background, sharps/flats text)
---@field midi_pkey2                    ThemeColor MIDI piano key color (sharps/flats background, naturals text)
---@field midi_pkey3                    ThemeColor MIDI piano key color (selected)
---@field midi_rulerbg                  ThemeColor MIDI editor ruler background
---@field midi_rulerfg                  ThemeColor MIDI editor ruler text
---@field midi_selbg                    ThemeColor MIDI editor time selection color
---@field midi_selpitch1                ThemeColor MIDI editor background color, selected pitch (naturals)
---@field midi_selpitch2                ThemeColor MIDI editor background color, selected pitch (sharps/flats)
---@field midi_trackbg1                 ThemeColor MIDI editor background color (naturals)
---@field midi_trackbg2                 ThemeColor MIDI editor background color (sharps/flats)
---@field midi_trackbg_outer1           ThemeColor MIDI editor background color, out of bounds (naturals)
---@field midi_trackbg_outer2           ThemeColor MIDI editor background color, out of bounds (sharps/flats)
---@field midieditorlist_bg             ThemeColor MIDI list editor background
---@field midieditorlist_bg2            ThemeColor MIDI list editor background (secondary)
---@field midieditorlist_fg             ThemeColor MIDI list editor text
---@field midieditorlist_fg2            ThemeColor MIDI list editor text (secondary)
---@field midieditorlist_grid           ThemeColor MIDI list editor grid lines
---@field midieditorlist_selbg          ThemeColor MIDI list editor selected row
---@field midieditorlist_selbg2         ThemeColor MIDI list editor selected row (secondary)
---@field midieditorlist_selfg          ThemeColor MIDI list editor selected text
---@field midieditorlist_selfg2         ThemeColor MIDI list editor selected text (secondary)
---@field midieditorlist_seliabg        ThemeColor MIDI list editor selected row (inactive)
---@field midieditorlist_seliafg        ThemeColor MIDI list editor selected text (inactive)
---@field midifont_col_dark             ThemeColor MIDI editor note text and control color (dark)
---@field midifont_col_dark_unsel       ThemeColor MIDI editor note text and control color, unselected (dark)
---@field midifont_col_light            ThemeColor MIDI editor note text and control color (light)
---@field midifont_col_light_unsel      ThemeColor MIDI editor note text and control color, unselected (light)
---@field midioct                       ThemeColor MIDI editor octave line color
---@field midioct_inline                ThemeColor MIDI inline octave line color
---@field mute_overlay_col              ThemeColor Muted/unsoloed track/item overlay color
---@field playcursor_color              ThemeColor Play cursor
---@field playrate_edited               ThemeColor Project play rate control when not 1.0
---@field region                        ThemeColor Regions
---@field region_lane_bg                ThemeColor Region lane background
---@field region_lane_text              ThemeColor Region lane text
---@field score_bg                      ThemeColor MIDI notation editor background
---@field score_fg                      ThemeColor MIDI notation editor staff/notation/text
---@field score_loop                    ThemeColor MIDI notation editor loop points, selected pitch
---@field score_sel                     ThemeColor MIDI notation editor selected staff/notation/text
---@field score_timesel                 ThemeColor MIDI notation editor time selection
---@field selcol_tr1_bg                 ThemeColor Selected track background (odd tracks)
---@field selcol_tr2_bg                 ThemeColor Selected track background (even tracks)
---@field selitem_tag                   ThemeColor Selected media item bar color
---@field take_marker                   ThemeColor Media item take marker
---@field tcp_list_scrollbar            ThemeColor List scrollbar (track panel)
---@field tcp_list_scrollbar_mouseover  ThemeColor List scrollbar mouseover (track panel)
---@field tcplocked_color               ThemeColor Locked track control panel overlay color
---@field timesig_sel_bg                ThemeColor Time signature marker selected background
---@field toolbararmed_color            ThemeColor Toolbar button armed color
---@field ts_lane_bg                    ThemeColor Time signature lane background
---@field ts_lane_text                  ThemeColor Time signature lane text
---@field windowtab_bg                  ThemeColor Tab control background in windows
---@field wiring_border                 ThemeColor Wiring: Box border
---@field wiring_fader                  ThemeColor Wiring: Fader
---@field wiring_grid                   ThemeColor Wiring: Background grid lines
---@field wiring_grid2                  ThemeColor Wiring: Background
---@field wiring_horz_col               ThemeColor Wiring: Horizontal pin connections
---@field wiring_hwout                  ThemeColor Wiring: System hardware outputs
---@field wiring_hwoutwire              ThemeColor Wiring: Hardware output wire
---@field wiring_media                  ThemeColor Wiring: Media
---@field wiring_parent                 ThemeColor Wiring: Master/Parent
---@field wiring_parentwire_border      ThemeColor Wiring: Master/Parent wire border
---@field wiring_parentwire_folder      ThemeColor Wiring: Master/Parent to parent folder wire
---@field wiring_parentwire_master      ThemeColor Wiring: Master/Parent to master wire
---@field wiring_pin_connected          ThemeColor Wiring: Pins connected
---@field wiring_pin_disconnected       ThemeColor Wiring: Pins disconnected
---@field wiring_pin_normal             ThemeColor Wiring: Pins normal
---@field wiring_recbg                  ThemeColor Wiring: Record section background
---@field wiring_recinput               ThemeColor Wiring: System record inputs
---@field wiring_recinputwire           ThemeColor Wiring: Record input wire
---@field wiring_recitem                ThemeColor Wiring: Record section foreground
---@field wiring_recv                   ThemeColor Wiring: Receives
---@field wiring_send                   ThemeColor Wiring: Sends
---@field wiring_sendwire               ThemeColor Wiring: Send hanging wire
---@field wiring_tbg                    ThemeColor Wiring: Box background
---@field wiring_ticon                  ThemeColor Wiring: Box foreground
