" Vim color file
" Maintainer:   Gabriel Tumbaga
" Last Change:  2018 Dec 18

" I altered to refer to system colors. that way your color scheme stays
" consistent throughout.
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="g16"

hi Normal       term=NONE cterm=NONE ctermfg=White   ctermbg=NONE
hi NonText      term=NONE cterm=NONE ctermfg=darkblue   ctermbg=NONE
hi Title        term=NONE cterm=NONE ctermfg=gray   ctermbg=NONE
 

hi Statement    term=NONE cterm=NONE ctermfg=Darkblue  ctermbg=NONE
hi Special      term=NONE cterm=NONE ctermfg=White ctermbg=NONE
hi Function      term=NONE cterm=NONE ctermfg=DarkBlue ctermbg=NONE
hi SpecialKey   term=NONE cterm=NONE ctermfg=DarkGray  ctermbg=NONE
hi NonText      term=NONE cterm=NONE ctermfg=DarkGray  ctermbg=NONE
hi extends      term=NONE cterm=NONE ctermfg=darkgray  ctermbg=NONE
hi Constant     term=NONE cterm=NONE ctermfg=White ctermbg=NONE
hi String       term=NONE cterm=NONE ctermfg=Blue  ctermbg=NONE
hi Comment      term=NONE cterm=NONE ctermfg=DarkCyan ctermbg=NONE
hi Conceal      ctermfg=darkgray ctermbg=NONE
hi Preproc      term=NONE cterm=NONE ctermfg=blue ctermbg=NONE
hi Type         term=NONE cterm=NONE ctermfg=Gray ctermbg=NONE
hi Identifier   term=NONE cterm=NONE ctermfg=Grey ctermbg=NONE
hi Number          ctermfg=Blue
hi Boolean         ctermfg=Blue
hi LineNr       cterm=NONE ctermfg=DarkYellow  ctermbg=NONE
hi CursorLine   ctermbg=DarkGray ctermfg=None cterm=None term=None
hi CursorLineNr cterm=None ctermfg=White ctermbg=DarkGray

hi MatchParen cterm=NONE ctermfg=white ctermbg=blue

hi StatusLine   term=NONE cterm=NONE ctermfg=Black ctermbg=White
hi StatusLineNC term=NONE cterm=NONE ctermfg=Black ctermbg=White
hi TabLine          cterm=NONE      ctermfg=gray         ctermbg=NONE
hi TabLineFill      cterm=NONE      ctermfg=black        ctermbg=NONE
hi TabLineSel       cterm=NONE      ctermfg=black         ctermbg=White

hi Visual       term=NONE cterm=NONE ctermfg=DarkGray ctermbg=DarkYellow

hi Search       term=NONE cterm=NONE ctermbg=Gray

hi VertSplit    term=NONE cterm=NONE ctermfg=Black ctermbg=White

hi Directory    term=NONE cterm=NONE ctermfg=Green ctermbg=NONE

hi WarningMsg   term=standout cterm=NONE ctermfg=Red ctermbg=NONE

hi Error        term=NONE cterm=NONE ctermfg=White ctermbg=Red

hi Cursor       ctermfg=Black ctermbg=Yellow

hi WildMenu     cterm=NONE ctermfg=DarkGray ctermbg=DarkYellow

hi Conceal      term=NONE cterm=NONE ctermfg=darkgray ctermbg=NONE

hi Pmenu        cterm=NONE ctermfg=DarkGray ctermbg=DarkYellow
hi PmenuSel     cterm=NONE ctermfg=DarkGray ctermbg=DarkRed


hi! link cssBraces Delimiter
hi! link cssClassName Statement
hi! link cssClassNameDot Normal
hi! link cssPseudoClassId Function
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg htmlTagName
hi! link htmlEndTag htmlTag
hi! link htmlTag  Statement
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
