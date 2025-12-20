" ======================================================
"   Colorscheme Monochrome Green + Gray scale
" ======================================================

hi clear
set background=dark
let g:colors_name = "dragonGreen"

" --------------------------
" Paleta (GUI)
" --------------------------
" Background dark       = #0b0b0b
" Background            = #181616
" Background light      = #181818
"
" Foreground dim        = #737c73
" Foreground            = #c8c8c8
" Foreground bright     = #e0e0e0
"
" Green                 = #87a987
" Green dim             = #8a9a7b
" Green bright          = #b6d1b6

" ======================================================
"   Highlight Groups
" ======================================================

hi Normal         guifg=#c8c8c8    guibg=#181616    gui=NONE

hi Comment        guifg=#737c73    guibg=NONE       gui=italic

hi Identifier     guifg=#e0e0e0    guibg=NONE       gui=NONE
hi Function       guifg=#b6d1b6    guibg=NONE       gui=NONE
hi Statement      guifg=#87a987    guibg=NONE       gui=NONE
hi Keyword        guifg=#87a987    guibg=NONE       gui=NONE
hi Type           guifg=#8a9a7b    guibg=NONE       gui=NONE
hi Constant       guifg=#e0e0e0    guibg=NONE       gui=NONE

hi Special        guifg=#e0e0e0    guibg=NONE       gui=NONE

hi String         guifg=#8a9a7b    guibg=NONE       gui=NONE
hi Character      guifg=#8a9a7b    guibg=NONE       gui=NONE
hi Number         guifg=#87a987    guibg=NONE       gui=NONE
hi Boolean        guifg=#b6d1b6    guibg=NONE       gui=NONE

" --------------------------
" UI
" --------------------------
hi CursorLine     guifg=NONE       guibg=#181818    gui=NONE
hi CursorLineNr   guifg=#87a987    guibg=NONE       gui=NONE
hi LineNr         guifg=#a0a0a0    guibg=NONE       gui=NONE

hi Visual         guifg=#ffffff    guibg=#8a9a7b    gui=NONE
hi MatchParen     guifg=#b6d1b6    guibg=NONE       gui=bold

hi Search         guifg=#0b0b0b    guibg=#b6d1b6    gui=NONE
hi IncSearch      guifg=#0b0b0b    guibg=#87a987    gui=NONE

hi StatusLine     guifg=#c8c8c8    guibg=#181818    gui=NONE
hi StatusLineNC   guifg=#737c73    guibg=#0b0b0b    gui=NONE

hi VertSplit      guifg=#181818    guibg=NONE       gui=NONE

hi Directory      guifg=#87a987    guibg=NONE       gui=NONE
hi Title          guifg=#b6d1b6    guibg=NONE       gui=bold

" --------------------------
" Mensajes / Diagnóstico
" --------------------------
hi Error          guifg=#ff5555    guibg=NONE       gui=NONE
hi WarningMsg     guifg=#ffaa00    guibg=NONE       gui=NONE
hi Todo           guifg=#0b0b0b    guibg=#b6d1b6    gui=NONE

" --------------------------
" Cursor
" --------------------------
hi Cursor         guifg=#0b0b0b    guibg=#b6d1b6    gui=NONE

" --------------------------
" Git / Diff signs
" --------------------------
hi Added          guifg=#76946A    guibg=NONE       gui=NONE
hi Removed        guifg=#C34043    guibg=NONE       gui=NONE
hi Changed        guifg=#DCA561    guibg=NONE       gui=NONE

" --------------------------
" Popup Menus
" --------------------------
hi Pmenu          guifg=#d0d0d0    guibg=#181818
hi PmenuSel       guifg=#ffffff    guibg=#3b6f4a    gui=bold
hi PmenuSbar      guibg=#181616
hi PmenuThumb     guibg=#3b6f4a
hi NormalFloat    guifg=#d0d0d0    guibg=#181616
hi FloatBorder    guifg=#3b6f4a    guibg=#181616
