set background=dark

if exists("syntax_on")
  syntax reset
endif

let colors_name = "perso"

hi ColorColumn                  guibg=#062725
hi CursorColumn                 guibg=#0D4441
hi CursorLine                   guibg=#0D4441          cterm=none
hi CursorLineNr   guifg=#F0FF00 guibg=#062725 gui=bold
hi Folded         guifg=#FFFFFF guibg=#062725 gui=bold
hi Foldcolumn     guifg=#FF0000 guibg=#093835 gui=bold
hi LineNr         guifg=#FFFFFF guibg=#062725 gui=bold
hi NonText        guifg=#FFFFFF guibg=#062725
hi Normal         guifg=#FFFFFF guibg=#093835
hi StatusLine     guifg=#FFFFFF guibg=#000000 gui=bold
hi StatusLineNC   guifg=#06505F guibg=#000000 gui=bold
hi TabBufNr       guifg=#CD2B82 guibg=#FFFFFF gui=bold
hi TabLabel       guifg=#000000 guibg=#06505F gui=bold
hi TabLabelSel    guifg=#FFFFFF guibg=#093835 gui=bold
hi TabLineFill    guifg=#FFFFFF
hi TabModified    guifg=#D4D473 guibg=#06505F gui=bold
hi TabModifiedSel guifg=#E8E80C guibg=#093835 gui=bold
hi TabNr          guifg=#90E59E guibg=#06505F gui=bold
hi TabNrSel       guifg=#00FE2A guibg=#093835 gui=bold
hi VertSplit      guifg=#093835 guibg=#FFFFFF

if has("nvim") || has("gui_running")
    hi StatusLine   guifg=#000000 guibg=#FFFFFF
    hi StatusLineNC guifg=#000000 guibg=#06505F
endif
