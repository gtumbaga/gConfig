" =========================================================
" gNvim011.vim - Neovim 0.11 compatible colorscheme
" Maintainer: Gabriel Tumbaga
" =========================================================
"
" =====================
" ANSI palette
" =====================
let s:black        = "#170A2F"
let s:boldblack    = "#515151"
let s:red          = "#EB3DAC"
let s:boldred      = "#FD1D53"
let s:green        = "#D288F5"
let s:boldgreen    = "#FAB0FF"
let s:yellow       = "#F9C80E"
let s:boldyellow   = "#FD9F52"
let s:blue         = "#147EB8"
let s:boldblue     = "#3CA6E0"
let s:magenta      = "#775ABB"
let s:boldmagenta  = "#9F82E3"
let s:cyan         = "#246E83"
let s:boldcyan     = "#19CED2"
"let s:white        = "#64FFFF"
let s:white        = "#CCCCCC"
let s:boldwhite    = "#FFFFFF"






set background=dark
let g:colors_name="gNvim011"


"hi TabLine      guifg={s.white}      guibg={s.black}
"hi TabLineFill  guifg={s.black}      guibg={s.white}
"hi TabLineSel   guifg={s.black}      guibg={s.white}
"hi LineNr       cterm=NONE ctermfg=4  ctermbg=NONE
"hi CursorLine   ctermbg=0 ctermfg=None cterm=None term=None
"hi CursorLineNr cterm=None ctermfg=15 ctermbg=0
"hi Visual       term=NONE cterm=NONE ctermfg=8 ctermbg=3

execute 'hi Normal guibg=NONE'

execute 'hi TabLine guifg=' . s:white . ' guibg=' . s:black
execute 'hi TabLineFill guifg=' . s:white . ' guibg=' . s:black
execute 'hi TabLineSel guifg=' . s:black . ' guibg=' . s:boldwhite

execute 'hi Visual guifg=' . s:black . ' guibg=' . s:yellow
execute 'hi LineNr guifg=' . s:blue . ' guibg=' . s:black
execute 'hi NonText guifg=' . s:boldblack

" these are being set by InsertStatuslineColor()
"execute 'hi CursorLine guibg=' . s:blue
"execute 'hi CursorLineNr guifg=' . s:red . ' guibg=' . s:black
