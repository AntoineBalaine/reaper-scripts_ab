return {
  timeline_selector = {
    ["s"] = "SelectedNotes",
  },
  timeline_operator = {
    ["d"] = "CutNotes",
    ["y"] = "CopyNotes",
    ["i"] = "FitNotes",
    ["n"] = "InsertNote",
    ["g"] = "JoinNotes",
    ["s"] = "SelectNotes",
    ["z"] = "MidiZoomSelHorizontal",
  },
  timeline_motion = {
    ["w"] = "NextNoteStart",
    ["b"] = "PrevNoteStart",
    ["W"] = "NextNoteSamePitchStart",
    ["B"] = "PrevNoteSamePitchStart",
    ["e"] = "MoveEditCursorToEventSelectionEnd",
  },
  command = {
    ["+"] = "MidiZoomInVert",
    ["-"] = "MidiZoomOutVert",
    ["<C-+>"] = "MidiZoomInHoriz",
    ["<C-->"] = "MidiZoomOutHoriz",
    ["-"] = "MidiZoomOutVert",
    ["p"] = "MidiPaste",
    ["<ESC>"] = "CloseWindow",
    ["x"] = "DeleteNote",
    ["S"] = "ClearNoteSelection",
    ["G"] = "JoinNotes",
    ["Y"] = "CopySelectedEvents",
    ["D"] = "CutSelectedEvents",
    ["k"] = "PitchCursorUp",
    ["j"] = "PitchCursorDown",
    ["K"] = "PitchCursorUpOctave",
    ["J"] = "PitchCursorDownOctave",
    ["<C-b>"] = "PitchCursorUpOctave",
    ["<C-f>"] = "PitchCursorDownOctave",
    ["<C-u>"] = "PitchCursorUp7",
    ["<C-d>"] = "PitchCursorDown7",
    ["o"] = "InsertNote",
    ["V"] = "SelectAllNotesAtPitchCursor",
    ["<M-k>"] = "MoveNoteUpSemitone",
    ["<M-j>"] = "MoveNoteDownSemitone",
    ["<M-K>"] = "MoveNoteUpOctave",
    ["<M-J>"] = "MoveNoteDownOctave",
    ["<M-l>"] = "MoveNoteRight",
    ["<M-h>"] = "MoveNoteLeft",
  },
}

