local lib = require("library")

return {
      Region = lib.selectInnerRegion,
      PrevBigItemStart = lib.moveToPrevBigItemStart,
      NextBigItemStart = lib.moveToNextBigItemStart,
      NextBigItemEnd = lib.moveToNextBigItemEnd,
      PrevItemStart = lib.moveToPrevItemStart,
      NextItemStart = lib.moveToNextItemStart,
      NextItemEnd = lib.moveToNextItemEnd,
      FirstItemStart = lib.moveToFirstItemStart,
      LastItemEnd = lib.moveToLastItemEnd,
      FirstTrack = lib.firstTrack,
      LastTrack = lib.lastTrack,
      BigItem = lib.selectInnerBigItem,
      Item = lib.selectInnerItem,
      DeleteItems = {"SelectItems", "CutItem"},
      CopyItems = {"SelectItems", "CopyItem"},
      PlayMacro = "PlayMacro",
      Selection = "NoOp",
      RecordMacro = "RecordMacro",
      RepeatLastCommand = "RepeatLastCommand",
      SwitchTimelineSelectionSide = lib.switchTimelineSelectionSide,
      FolderParent = "_SWS_SELPARENTS",
      AllTracks = 40296,
      MakeFolder = "_SWS_MAKEFOLDER",
      OuterFolder =  {"FolderParent", "SelectFoldersChildren"},
      SelectFoldersChildren = "_SWS_SELCHILDREN2",
      SelectOnlyFoldersChildren = "_SWS_SELCHILDREN",
      InnerFolder = {"FolderParent", "SelectOnlyFoldersChildren"},
      SelectedItems = 41039,
      RestoreItemSelection = "_SWS_RESTALLSELITEMS1",
      SaveItemSelectionAll = "_SWS_SAVEALLSELITEMS1",
      AllTrackItems = {"SaveItemSelectionAll", "SelectItemsOnTrack", "SelectedItems", "RestoreItemSelection"},
      SelectItemsOnTrack = 40421,
      NoOp = 65535,
      SetRecordModeToNormal = 40252,
      Stop = 40667,
      UnselectItems = 40289,
      ResetToNormal = lib.resetModeToNormal,
      Reset = {"Stop", "SetRecordModeToNormal", "ResetToNormal", "UnselectItems"},
      UnselectTracks = 40297,
      UnselectAll = {"UnselectTracks", "UnselectItems"},
      OpenReaperKeysConfig = lib.openConfig,
      ToggleVisualTimelineMode = lib.toggleVisualTimelineMode,
      ToggleVisualTrackMode = lib.toggleVisualTrackMode,
      PasteRegister = lib.register_actions.pasteRegister,
      VerticalScrollEnd = "_XENAKIOS_TVPAGEEND",
      VerticalScrollStart = "_XENAKIOS_TVPAGEHOME",
      SelectLastOfSelectedTracks = "_XENAKIOS_SELLASTOFSELTRAX",
      SelectFirstOfSelectedTracks = "_XENAKIOS_SELFIRSTOFSELTRAX",
      NextFolderNear = "_SWS_SELNEARESTNEXTFOLDER",
      PrevFolderNear = "_SWS_SELNEARESTPREVFOLDER",
      NextTrack = 40285,
      PrevTrack = 40286,
      Prev10Track = {"PrevTrack", repetitions=10},
      Prev5Track = {"PrevTrack", repetitions=5},
      Next10Track = {"NextTrack", repetitions=10},
      Next5Track = {"NextTrack", repetitions=5},
      NextTrackKeepSel = 40287,
      PrevTrackKeepSel = 40288,
      RightPixel = 40105,
      LeftPixel = 40104,
      SaveItemSelection = "_SWS_SAVEALLSELITEMS1",
      RestoreItemSelection = "_SWS_RESTALLSELITEMS1",
      Change = {"TimeSelectionStart", "TransportPlay", "_SWS_AWRECORDCOND", setTimeSelection=true},
      Play = {"TimeSelectionStart", "TransportPlay" , setTimeSelection=true},
      ArmToggle = 9,
      CropToActiveTake = 40131,
      SetTimeSelectionStart = 40222,
      SetTimeSelectionEnd = 40223,
      ToggleStopAtEndOfTimeSelectionIfNoRepeat = 41834,
      ZoomToPlayPosition = 40150,
      ZoomInHoriz = 1012,
      ZoomOutHorizon = 1011,
      SnapshotsRecallCurrent1 = "_SWSSNAPSHOT_GET",
      SnapshotsAddNew = "_SWSSNAPSHOT_NEW",
      SnapshotsAddNew = "_SWSSNAPSHOT_NEW",
      SnapshotsDeleteCurrent = "_SWSSNAPSHOT_DELCUR",
      SnapshotsRecallNext = "_SWSSNAPSHOT_GET_NEXT",
      SnapshotsAddAndName = "_SWSSNAPSHOT_NEWEDIT",
      SnapshotsRecallPrev = "_SWSSNAPSHOT_GET_PREVIOUS",
      SnapshotsRecallCurrent = "_SWSSNAPSHOT_GET",
      SnapshotsSaveCurrent = "_SWSSNAPSHOT_SAVE",
      SnapshotsOpenWindow = "_SWSSNAPSHOT_OPEN",
      GrowItemLeft = 40225,
      NextEnvelope = 41864,
      PrevEnvelope = 41863,
      FocusMain = "_S&M_WNMAIN",
      ZoomInVert = 40111,
      ZoomOutVert = 40112,
      ShrinkItemRight = 40228,
      ShrinkItemLeft = 40226,
      ZoomRedo = "_SWS_REDOZOOM",
      TapTempo = 1134,
      ZoomUndo = "_SWS_UNDOZOOM",
      RenameTrack = 40696,
      InsertTrackAbove = "_SWS_INSRTTRKABOVE",
      EnterTrackAbove = {"InsertTrackAbove", "ColorTrackWithTrackBelow", "RenameTrack"},
      EnterTrackBelow = {"InsertTrackBelow", "ColorTrackWithTrackAbove", "RenameTrack"},
      InsertTrackBelow = 40001,
      ColorTrackWithTrackBelow = "_SWS_COLTRACKNEXT",
      ColorTrackWithTrackAbove = "_SWS_COLTRACKPREV",
      ToggleViewMixer = 40078,
      Paste = "_SWS_AWPASTE",
      PasteAbove = {"PrevTrack", "Paste"},
      ToggleLoop = 1068,
      SelectItemsInTrack = 40421,
      TimeSelectionStart = 40632,
      TimeSelectionEnd = 40633,
      DeleteActiveTake = 40129,
      CutTrack = {"CopyTrack", "RemoveTrack", "PrevTrack", "NextTrack"},
      CopyTrack = 40210,
      RemoveTrack = 40005,
      SplitAtTimeSelection = 40061,
      SelectItemsCrossingTimeSelection = 40718,
      SelectItems = {"SelectItemsCrossingTimeSelection", "SplitAtTimeSelection"},
      NextRegion = "_SWS_SELNEXTREG",
      PrevRegion = "_SWS_SELPREVREG",
      SplitAndSelectItemsInRegion = "_S&M_SPLIT11",
      DelEnvelopeInRegion = 40089,
      SnapshotsAddNewAllTracks = "_SWSSNAPSHOT_NEWALL",
      GlueItems = {"SelectItemsCrossingTimeSelection", 41588},
      FitItemsToRegion = 41385,
      ExpandItemsToRegion =  {"GlueItems", "FitItemsToRegion"},
      RegionSplitItems = 40061,
      SetTimeSelectionStart = 40222,
      SetTimeSelectionEnd = 40223,
      RegionSelectPrev = "_SWS_SELPREVREG",
      TimeSelectionStart = 40632,
      TimeSelectionEnd = 40633,
      InsertRegion = 40174,
      SelectItemsInGroups = 40034,
      SelectAllItems = 40182,
      SelectAllTracks = 40296,
      SelectRegionItems = 40717,
      CutItem = 40699,
      CopyTrack = 40210,
      ZoomProject = 40295,
      UncollapseFolder = "_SWS_UNCOLLAPSE",
      VerticalZoom = "_SWS_VZOOMFITMIN",
      SaveSelection = "_SWS_SAVESEL",
      RestoreSelection = "_SWS_TOGSAVESEL",
      ZoomFolder = {"SaveSelection", "PrevFolderNear", "UncollapseFolder", "InnerFolder", "VerticalZoom", "RestoreSelection"},
      ZoomAllTracks = {"ZoomProject",  "SaveSelection",  "SelectAllTracks", "VerticalZoom", "RestoreSelection"},
      ZoomHorizontal = 40031,
      ZoomTimeAndTrackSelection = {"ZoomHorizontal",  "VerticalZoom"},
      ZoomTrackSelection = "VerticalZoom",
      ZoomItemSelection = "_SWS_ITEMZOOM",
      ScrollToSelectedTrack = 40913,
      PrevTake = 40126,
      NextTake = 40125,
      ShowActionList = 40605,
      DeleteItem = 40006,
      CopyItem = 40698,
      PasteItem = 40058,
      NextMarker = 40173,
      PrevMarker = 40172,
      PrevMarker = 40172,
      OpenMidiEditor = 40153,
      ItemNormalize = 40108,
      ItemSplitSelRight = "_SWS_AWSPLITXFADELEFT",
      GroupItems = 40032,
      MoveItemLeftToEditCursor = 41306,
      MoveItemRightToEditCursor = 41307,
      TrimItemLeftToEditCursor = 41305,
      TrimItemRightToEditCursor = 41311,
      ShowTrackRouting = 40293,
      RenderTrack = "_SWS_AWRENDERSTEREOSMART",
      FreezeTrack = 41223,
      UnfreezeTrack = 41644,
      ShowTrackFreezeDetails = 41654,
      ToggleSolo = 7,
      ToggleMute = 6,
      CycleRecordMonitor = 40495,
      AddTrackVirtualInstrument = 40701,
      InsertTrack = 40001,
      RenameTrack = 40696,
      ColorTrack = 40360,
      SetTrackMidiAllChannels = "_S&M_MIDI_INPUT_ALL_CH",
      IncreaseTrackHeight = 41325,
      DecreaseTrackHeight = 41326,
      MixerShowHideChildrenOfSelectedTrack = 41665,
      CycleFolderCollapsedState = 1042,
      CycleFolderState = 1041,
      ViewFxChainMaster = 40846,
      MidiLearnLastTouchedFX = 41144,
      SaveFxChain = lib.register_actions.saveFxChain,
      FxToggleShowAll = "_S&M_WNTGL5",
      CopyFxChain = "_S&M_SMART_CPY_FXCHAIN",
      ItemApplyFX = 40209,
      ClearFxChainInputCurrentTrack = "_S&M_CLR_INFXCHAIN",
      ClearFxChainCurrentTrack = "_S&M_CLRFXCHAIN3",
      FxAdd = "_S&M_CONSOLE_ADDFX",
      PasteFxChain = "_S&M_SMART_PST_FXCHAIN",
      ViewFxChainInputCurrentTrack = 40844,
      TrackToggleFXBypass = 8,
      FxChainToggleShow = "_S&M_TOGLFXCHAIN",
      FxToggleShowAll = "_S&M_WNTGL5",
      FxCloseSel = "_S&M_WNCLS5",
      FxShowNextSel = "_S&M_WNONLY2",
      FxShowPrevSel = "_S&M_WNONLY1",
      FxToggleShow1 = "_S&M_TOGLFLOATFX1",
      FxToggleShow2 = "_S&M_TOGLFLOATFX2",
      FxToggleShow3 = "_S&M_TOGLFLOATFX3",
      FxToggleShow4 = "_S&M_TOGLFLOATFX4",
      FxToggleShow5 = "_S&M_TOGLFLOATFX5",
      FxToggleShow6 = "_S&M_TOGLFLOATFX6",
      FxToggleShow7 = "_S&M_TOGLFLOATFX7",
      FxToggleShow8 = "_S&M_TOGLFLOATFX8",
      ShowRoutingMatrix = 40251,
      ShowWiringDiagram = 42031,
      FxCloseAll = "_S&M_WNCLS3",
      FxCloseAll = "_S&M_WNCLS3",
      ShowEnvelopeModulationLastTouchedFx = 41143,
      ResetAllMidiDevices = 41175,
      ResetAllControlSurfaceDevices = 42348,
      ResetControlDevices = {"ResetAllMidiDevices", "ResetAllControlSurfaceDevices"},
      ShowTrackManager = 40906,
      UnsoloAllTracks = 40340,
      UnmuteAllTracks = 40339,
      ClearAllRecordArm = 40491,
      Preferences = 40016,
      CycleRippleEditMode = 1155,
      SnapToggle = 1157,
      ToggleMetronome = 40364,
      ToggleShowAllEnvelopeGlobal = 41152,
      ToggleEnvelopePointsMoveWithItems = 40070,
      ArmToggleSelected = 9,
      Input = 40496,
      MidiOutput = 40500,
      MidiOverdub = 40503,
      MidiTouchReplace = 40852,
      MidiReplace = 40504,
      MonitorOnly = 40498,
      SetGlobalEnvelopeModeTrimRead = 40878,
      SetGlobalEnvelopeModeLatch = 40881,
      SetGlobalEnvelopeModeLatchPreview = 42022,
      SetGlobalEnvelopeModeLatchPreview = 42022,
      SetGlobalEnvelopeModeRead = 40879,
      SetGlobalEnvelopeModeTouch = 40880,
      SetGlobalEnvelopeModeWrite = 40882,
      SetGlobalEnvelopeModeOff = 40876,
      SetEnvelopeModeTrimRead = 40400,
      SetEnvelopeModeRead = 40401,
      SetEnvelopeModeLatchPreview = 42023,
      SetEnvelopeModeLatch = 40404,
      SetEnvelopeModeLatchPreview = 42023,
      SetEnvelopeModeLatch = 40404,
      SetEnvelopeModeTouch = 40402,
      SetEnvelopeModeWrite = 40403,
      ToggleShowAllEnvelope = 41151,
      ToggleShowEnvelope = 40884,
      ToggleVolumeEnvelope = 40406,
      TogglePanEnvelope = 40407,
      DelSelEnvelope = 40333,
      ClearEnvelope = 40065,
      ClearAllEnvelope = "_S&M_REMOVE_ALLENVS",
      CopySelEnvelope = 40035,
      ToggleArmAllEnvelope = "_S&M_TGLARMALLENVS",
      ToggleArmEnvelope = 40863,
      RenderProjectWithLastSetting = 41824,
      RenderProject = 40015,
      NextTab = 40861,
      PrevTab = 40862,
      SaveProject = 40026,
      OpenProject = 4025,
      NewProjectTab = 40859,
      CloseProject = 40860,
      CleanProjectDirectory = 40098,
      ProjectEnd = 40043,
      ProjectStart = 40042,
      ProjectTimeline = {"ProjectStart", "SetTimeSelectionStart", "ProjectEnd", "SetTimeSelectionEnd"},      
      MoveToFirstItem = {"_XENAKIOS_SELFIRSTITEMSOFTRACKS", 41173},
      PrevMeasure = 40840,
      NextMeasure = 40839,
      Prev4Measures = {"PrevMeasure", repetitions = 4},
      Next4Measures = {"NextMeasure", repetitions = 4},
      PrevBeat = 40842,
      NextBeat = 40841,
      Prev4Beats = {"PrevBeat", repetitions = 4},
      Next4Beats = {"NextBeat", repetitions = 4},
      PlayFromMouse = "_BR_PLAY_MOUSECURSOR",
      TransportPlay = 1007,
      TransportPlayPause = 40073,
      CursorToMouse = 40514,
      CursorToMouseAndSnap = 40513,
      CursorToMouseAndPlay = {"CursorToMouse", "TransportPlay"},
      CursorToMouseAndPlaySnap = {"CursorToMouseAndSnap", "TransportPlay"},
      CursorToPlayCursor = 40434,
      CursorLeft40 = {"CursorLeft10", repetitions = 4},
      CursorRight40 = {"CursorRight10", repetitions = 4},
      CursorLeft10 = "_XENAKIOS_MOVECUR10PIX_LEFT",
      CursorRight10 = "_XENAKIOS_MOVECUR10PIX_RIGHT",
      FocusMainAndToggleFloatingWindows = {"FocusMain", "ToggleFloatingWindows"},
      ToggleFloatingWindows = 41074,
      Redo = 40030,
      StartStop = 40044,
      ChangeUntilEnd = {"TransportPlay", 1013},
      ToggleRecording = 1013,
      TransportRecordOrStop = "_SWS_RECTOGGLE",
      Undo = 40029,
      CloseWindow = 2,
      EventList = 40056,
      Quantize = 40009,
      InsertNote = 40051,
      ActivateNextMidiItem = 40833,
      ActivatePrevMidiItem = 40834,
      SelectNextNote = 40413,
      SelectPrevNote = 40414,
      SelectNextNoteSamePitch = 40428,
      SelectPrevNoteSamePitch = 40427,
      DeleteNote = 40002,
      Copy = 40010,
      PitchCursorUp = 40049,
      PitchCursorUp7 = { "PitchCursorUp", repetitions=7},
      PitchCursorUpOctave =  40187,
      PitchCursorDown = 40050,
      PitchCursorDown7 = { "PitchCursorDown", repetitions=7},
      PitchCursorDownOctave = 40188,
      GoToStart = 40036,
      GoToEnd = 40037,
      DoubleGridSize = 40210,
      HalfGridSize = 40212,
      AddNearestNoteToSelection = 40426,
      ClearNoteSelection = 40214,
      MoveNoteUpSemitone = 40177,
      MoveNoteUpOctave= 40179,
      MoveNoteUpOctave= 40179,
      MoveNoteDownSemitone = 40178,
      MoveNoteDownOctave= 40180,
      SelectAllNotesAtPitchCursor = 41746,
      MoveNoteLeftFine = 40181,
      MoveNoteRightFine = 40182,
      MoveNoteLeft = 40183,
      MoveNoteRight= 40184,
      EditCursorToSelectedEvent = 40440,
      ToggleSnapToGrid = 1014,
      ToggleAutoScroll = 41817,
      CursorToStartOfSel = 40440,
      CursorLeftByGrid = 40047,
      CursorRightByGrid = 40048,
      CursorLeftByMeasure = 40683,
      CursorRightByMeasure = 40682,
      MoveEditCusrorToPlayCursor = 40434,
}
