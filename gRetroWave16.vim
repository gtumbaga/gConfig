" Vim color file
" Maintainer:   Gabriel Tumbaga
" Last Change:  2021 05 07

" I altered to refer to system colors. that way your color scheme stays
" consistent throughout.
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="g16"

hi Normal       term=NONE cterm=NONE ctermfg=15   ctermbg=NONE
hi NonText      term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
hi Title        term=NONE cterm=NONE ctermfg=7   ctermbg=NONE
 

hi Statement    term=NONE cterm=NONE ctermfg=1  ctermbg=NONE
hi Special      term=NONE cterm=NONE ctermfg=15 ctermbg=NONE
hi Function      term=NONE cterm=NONE ctermfg=1 ctermbg=NONE
hi SpecialKey   term=NONE cterm=NONE ctermfg=6  ctermbg=NONE
hi NonText      term=NONE cterm=NONE ctermfg=3  ctermbg=NONE
hi extends      term=NONE cterm=NONE ctermfg=6  ctermbg=NONE
hi Constant     term=NONE cterm=NONE ctermfg=15 ctermbg=NONE
hi String       term=NONE cterm=NONE ctermfg=5  ctermbg=NONE
hi Comment      term=NONE cterm=NONE ctermfg=6 ctermbg=NONE
hi Conceal      ctermfg=8 ctermbg=NONE
hi Preproc      term=NONE cterm=NONE ctermfg=5 ctermbg=NONE
hi Type         term=NONE cterm=NONE ctermfg=7 ctermbg=NONE
hi Identifier   term=NONE cterm=NONE ctermfg=7 ctermbg=NONE
hi Number          ctermfg=2
hi Boolean         ctermfg=2
hi LineNr       cterm=NONE ctermfg=4  ctermbg=NONE
hi CursorLine   ctermbg=8 ctermfg=None cterm=None term=None
hi CursorLineNr cterm=None ctermfg=15 ctermbg=8

hi MatchParen cterm=NONE ctermfg=15 ctermbg=5

hi StatusLine   term=NONE cterm=NONE ctermfg=0 ctermbg=15
hi StatusLineNC term=NONE cterm=NONE ctermfg=0 ctermbg=15
hi TabLine          cterm=NONE      ctermfg=7         ctermbg=NONE
hi TabLineFill      cterm=NONE      ctermfg=0        ctermbg=NONE
hi TabLineSel       cterm=NONE      ctermfg=0         ctermbg=15

hi Visual       term=NONE cterm=NONE ctermfg=8 ctermbg=3

hi SpellBad     term=NONE cterm=NONE ctermfg=0 ctermbg=1
hi SpellCap     term=NONE cterm=NONE ctermfg=0 ctermbg=12
hi SpellLocal   term=NONE cterm=UNDERLINE ctermfg=5 ctermbg=NONE

hi Search       term=NONE cterm=NONE ctermbg=7

hi VertSplit    term=NONE cterm=NONE ctermfg=0 ctermbg=15

hi Directory    term=NONE cterm=NONE ctermfg=10 ctermbg=NONE

hi WarningMsg   term=standout cterm=NONE ctermfg=9 ctermbg=NONE

hi Error        term=NONE cterm=NONE ctermfg=15 ctermbg=9

hi Cursor       ctermfg=0 ctermbg=11

hi WildMenu     cterm=NONE ctermfg=8 ctermbg=3

hi Conceal      term=NONE cterm=NONE ctermfg=8 ctermbg=NONE

hi Pmenu        cterm=NONE ctermfg=8 ctermbg=3
hi PmenuSel     cterm=NONE ctermfg=8 ctermbg=1


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
