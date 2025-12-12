" =========================================================
" g16.vim - Neovim 0.11 compatible colorscheme
" Maintainer: Gabriel Tumbaga
" Converted to modern guifg/guibg using custom ANSI palette
" =========================================================

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="g16"

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
let s:white        = "#64FFFF"
let s:boldwhite    = "#FFFFFF"

" =====================
" Core highlights
" =====================
hi Normal       guifg=s:white      guibg=s:black
hi NonText      guifg=s:red        guibg=NONE
hi Title        guifg=s:white      guibg=NONE
hi SignColumn   guifg=s:boldred    guibg=NONE

hi Statement    guifg=s:red        guibg=NONE
hi Special      guifg=s:white      guibg=NONE
hi Function     guifg=s:red        guibg=NONE
hi SpecialKey   guifg=s.cyan       guibg=NONE
hi extends      guifg=s.cyan       guibg=NONE
hi Constant     guifg=s.white      guibg=NONE
hi String       guifg=s.magenta    guibg=NONE
hi Comment      guifg=s.cyan       gui=italic
hi Conceal      guifg=s.boldblack  guibg=NONE
hi Preproc      guifg=s.magenta    guibg=NONE
hi Type         guifg=s.white      guibg=NONE
hi Identifier   guifg=s.white      guibg=NONE
hi Number       guifg=s.green
hi Boolean      guifg=s.green
hi LineNr       guifg=s.blue       guibg=NONE
hi CursorLine   guibg=s.black
hi CursorLineNr guifg=s.white      guibg=s.black

hi MatchParen   guifg=s.white      guibg=s.magenta

hi StatusLine   guifg=s.black      guibg=s.white
hi StatusLineNC guifg=s.black      guibg=s.white
hi TabLine      guifg=s.white      guibg=NONE
hi TabLineFill  guifg=s.black      guibg=NONE
hi TabLineSel   guifg=s.black      guibg=s.white

hi Visual       guifg=s.boldblack  guibg=s.yellow

hi SpellBad     guifg=s.black      guibg=s.red
hi SpellCap     guifg=s:black      guibg=s.boldblue
hi SpellLocal   guifg=s.magenta    guibg=NONE gui=underline

hi Search       guibg=s.white

hi VertSplit    guifg=s.black      guibg=s.white

hi Directory    guifg=s.green      guibg=NONE

hi WarningMsg   guifg=s.boldred    guibg=NONE gui=standout

hi Error        guifg=s.white      guibg=s.red

hi Cursor       guifg=s.black      guibg=s.yellow

hi WildMenu     guifg=s.boldblack  guibg=s.yellow

hi Pmenu        guifg=s.boldblack  guibg=s.yellow
hi PmenuSel     guifg=s.boldblack  guibg=s.red

hi Conceal      guifg=s.boldblack  guibg=NONE

" =====================
" Plugin / syntax links
" =====================
hi! link cssBraces Delimiter
hi! link cssClassName Statement
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Function
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg htmlTagName
hi! link htmlEndTag htmlTag
hi! link htmlTag Statement
hi! link htmlTagName Special
hi! link jsonQuote Normal
hi! link phpVarSelector Statement
hi! link phpIntVar Constant
hi! link phpFunctions Constant
hi! link rubyDefine Statement
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link vimIsCommand Statement
hi! link vimHiCtermColor Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Function
hi! link jsFlowType Statement
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link graphqlIdentifier Normal
hi! link graphqlOperator Normal
hi! link graphqlStructure Statement
hi! link jsArrowFunction Operator
hi! link jsClassMethodType Statement
hi! link jsExport Statement
hi! link jsFuncName Normal
hi! link jsFunction Function
hi! link jsStorageClass Function
hi! link jsGlobalObjects Statement
hi! link jsModuleKeywords Statement
hi! link jsModuleOperators Statement
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsThis Constant
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link plug1 Normal
hi! link plug2 Structure
hi! link plugDash Comment
hi! link plugMessage Special
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

" =====================
" Terminal colors (optional)
" =====================
let g:terminal_color_0  = s:black
let g:terminal_color_1  = s:red
let g:terminal_color_2  = s:green
let g:terminal_color_3  = s:yellow
let g:terminal_color_4  = s:blue
let g:terminal_color_5  = s:magenta
let g:terminal_color_6  = s:cyan
let g:terminal_color_7  = s:white
let g:terminal_color_8  = s:boldblack
let g:terminal_color_9  = s:boldred
let g:terminal_color_10 = s:boldgreen
let g:terminal_color_11 = s:boldyellow
let g:terminal_color_12 = s:boldblue
let g:terminal_color_13 = s:boldmagenta
let g:terminal_color_14 = s:boldcyan
let g:terminal_color_15 = s:boldwhite

