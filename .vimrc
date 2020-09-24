"check for vim color dir, create if it doesnt exist
if empty(glob('~/.vim/colors/g16.vim'))
  silent !mkdir ~/.vim/colors
  silent !ln -s ~/gConfig/g16.vim ~/.vim/colors/g16.vim
endif
  
"check for gabes colorscheme file, get it if its missing
if empty(glob('~/.vim/colors/g16.vim'))
  silent !ln -s ~/gConfig/g16.vim ~/.vim/colors/g16.vim
endif

"check for plugin manager, and install if it its not there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"the extensions I want for coc
let g:coc_global_extensions = [
  \ 'coc-ultisnips',
  \ 'coc-highlight',
  \ 'coc-yaml',
  \ 'coc-tsserver',
  \ 'coc-sql',
  \ 'coc-sh',
  \ 'coc-phpls',
  \ 'coc-markdownlint',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-angular'
  \ ]

"vim plugins we want
call plug#begin('~/.vim/plugged')
Plug 'nathanaelkane/vim-indent-guides'
Plug 'gregsexton/MatchTag'
Plug 'mattn/emmet-vim'

Plug 'scrooloose/nerdcommenter'
"Plug 'itchyny/vim-gitbranch'

Plug 'StanAngeloff/php.vim'
Plug 'evanleck/vim-svelte'
Plug 'leafgarland/typescript-vim'

" ======= Syntax Highlighting
Plug 'sheerun/vim-polyglot'
"Plug 'vim-syntastic/syntastic'

"Asynchronous Lint Engine
Plug 'dense-analysis/ale'

"Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


"disable macvim colorscheme so it will pick up settings form here.
let macvim_skip_colorscheme=1


let g:indent_guides_enable_on_vim_startup = 1
set ts=2 sw=2 et
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#203e53 ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#203e53 ctermbg=8

set encoding=utf-8 "encoding
"set t_Co=256 "enable more colors, needed this for the color scheme to work
syntax on "enable syntax colors
colorscheme g16 "custom theme
"colorscheme cobalt16 "custom theme
set number "displays numbers for each line
set numberwidth=5 "wider number bar
set relativenumber "makes the numberse relative
set wrap "enable word wrap for long lines
filetype plugin indent on
set tabstop=2 " show existing tab with 2 spaces width
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set expandtab " On pressing tab, insert 2 spaces
set backspace=2 " make backspace work like most other programs, fixes backspace not working where insert started...

set ruler "show cursor position all the time

"for security reasons, disable modelines.
set modelines=0
set nomodeline

"speedy stuffs
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set updatetime=0 "for fast CursorHold

"speedy stuffs, for those large files
set re=1 "force vim to use a older version of regex engine and it is actually FASTER
set foldmethod=indent "folding is calculated on indent rather than syntax
set nofoldenable    " even better, les disable folding
"set nocursorline "now we're actually force this disabled for speed
"let loaded_matchparen = 1 "disabling parenthesis highlighting

"set VIM to use specified tmp directories, so it stops storing tmp files in
"the working directory!
"the // at the end ensures that re-creates the directory struture of the file
"we're using in the tmp dir
"But first, lets check if the dir exists, and if it doesn't, lets create it.
if empty(glob('~/zzz_vimtmp'))
  silent !mkdir ~/zzz_vimtmp
endif
set backupdir=$HOME/zzz_vimtmp//
set directory=$HOME/zzz_vimtmp//
set undodir=$HOME/zzz_vimtmp//


"change status bar color in different modes
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi StatusLine   term=NONE cterm=NONE ctermfg=0 ctermbg=11 guifg=#ffee80 guibg=#193549
    hi StatusLineNC term=NONE cterm=NONE ctermfg=0 ctermbg=11 guifg=#ffee80 guibg=#193549
    highlight  CursorLine ctermbg=8 ctermfg=NONE cterm=None term=None guibg=#203e53 guifg=NONE
    highlight  CursorLineNr cterm=None ctermfg=0 ctermbg=11 guibg=#ffee80 guifg=#193549
  elseif a:mode == 'v'
    "set updatetime=0
    hi StatusLine   term=NONE cterm=NONE ctermfg=15 ctermbg=5 guifg=#ff628c guibg=#ffffff
    hi StatusLineNC term=NONE cterm=NONE ctermfg=15 ctermbg=5 guifg=#ff628c guibg=#ffffff
    highlight  CursorLine ctermbg=11 ctermfg=None cterm=None term=None guibg=#ffee80 guifg=NONE
    highlight  CursorLineNr cterm=None ctermfg=15 ctermbg=5 guibg=#ff628c guifg=#193549
  else
    hi StatusLine   term=NONE cterm=NONE ctermfg=0 ctermbg=15 guifg=#ffffff guibg=#193549
    hi StatusLineNC term=NONE cterm=NONE ctermfg=0 ctermbg=15 guifg=#ffffff guibg=#193549
    highlight  CursorLine ctermbg=8 ctermfg=None cterm=None term=None guibg=#203e53 guifg=NONE
    highlight  CursorLineNr cterm=None ctermfg=1 ctermbg=8 guibg=#203e53 guifg=#ffc600
    "set updatetime=0
  endif
  return ''
endfunction 
au InsertEnter * call InsertStatuslineColor('i')
au InsertLeave * call InsertStatuslineColor('n')
au CursorHold * call InsertStatuslineColor('n')

"instant visual mode color
vnoremap <silent> <expr> <SID>InsertStatuslineColor InsertStatuslineColor('v')
nnoremap <script> v v<SID>InsertStatuslineColor
nnoremap <script> V V<SID>InsertStatuslineColor
nnoremap <script> <C-v> <C-v><SID>InsertStatuslineColor




function! GetMyModeText()
  if (mode() == "i")
    "call InsertStatuslineColor('i')
    return "INSERT"
  elseif (mode() == "v") || (mode() == "V") || (mode() == "\<C-V>")
    "call InsertStatuslineColor('v')
    return "VISUAL"
  elseif (mode() == "n")
    "call InsertStatuslineColor('n')
    return "NORMAL"
  else
    "call InsertStatuslineColor('o')
    return "OTHER"
endfunction

"if empty(glob('~/.vim/plugged/vim-gitbranch/autoload/gitbranch.vim'))
  "set statusline+=%1*\ []\ %*\ 
"else
  "set statusline+=%1*\ [%{gitbranch#name()}]\ %*
"endif
set statusline=
set statusline+=%1*\ %y\ %*    "filetype
set statusline+=%2*\ [%t]\ %*   "filename w/o path

set statusline+=\ 
set statusline+=%h    "help file flag
set statusline+=%m    "modified flag
set statusline+=%r    "read only flag

set statusline+=%=    "left/right separator

set statusline+=\ [%{GetMyModeText()}]\ 
set statusline+=%2*\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]\ %* "file format
set statusline+=%1*\ [%P]\   "percent through file
set statusline+=[%l:%c]\ %*  "line:column

hi User1 term=NONE cterm=NONE ctermfg=0 ctermbg=04 guifg=#000000 guibg=#378bc9
hi User2 term=NONE cterm=NONE ctermfg=0 ctermbg=12 guifg=#000000 guibg=#70aedc
hi User3 term=NONE cterm=NONE ctermfg=07 ctermbg=08 guifg=#d7c5b1 guibg=#3a3f64
hi User4 term=NONE cterm=NONE ctermfg=00 ctermbg=15 guifg=#000000 guibg=#FFFFFF

"Start scrolling when we're 3 lines away from margins
set scrolloff=3
set sidescrolloff=15
set sidescroll=1
"ctrl-e and ctrl-y scroll 2 lines insetad of 1
noremap <C-e> 2<C-e>
noremap <C-y> 2<C-y>
" Scroll 2 characters to the right
map <C-L> 10zl
" Scroll 2 characters to the left
map <C-H> 10zh
"remove the esc key delay
set timeoutlen=1000 ttimeoutlen=200

"set // in visual mode, to search for selected text
vnoremap // y/\V<C-R>"<CR>

"change the emmet ctrl-z so ctrl-y can be used for scrolling without lag
let g:user_emmet_leader_key='<C-Z>'

" All the listchar special stuff to make spech char's show up
"set listchars+=nbsp:·
"set listchars+=eol:~
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:>,precedes:<
"set listchars+=tab:>-
" set the line  netrw colors
hi netrwTreeBar      term=NONE cterm=NONE ctermfg=6 ctermbg=NONE
hi netrwDir          term=NONE cterm=NONE ctermfg=12 ctermbg=NONE
" indentline settings
let g:indentLine_color_term = 6
let g:indentLine_leadingSpaceEnabled = 0
"let g:indentLine_char = '|'
"let g:indentLine_char = '¦'
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_indentLevel = 20
"indentline is changing default conceal level, so for we disable for stuff it
"breaks
let g:indentLine_fileTypeExclude = ["json", "md", "markdown"]

autocmd FileType json set conceallevel=0
autocmd FileType markdown set conceallevel=0

"let vim know about filetpypes so they can get colored up
autocmd BufNewFile,BufRead *.md set filetype=markdown
"autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

set list
set cursorline      " highlight current line

set wildmenu      " visual autocomplete for command menu
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch      " highlight matches
set cindent "c style indentation
set autoindent
set smartindent
imap <C-Return> <CR><CR><C-o>k<Tab>
"set paste "sets the paste mode, which keeps tab formatting when pasting from other code
set pastetoggle=<F2> "toggles between paste mode on and off. this is needed because tab key was inserting ^I when paste mode on

set laststatus=2 "force show status bar at the bottom

"checktime will check if the file has been edited and prompt for a reload
au FocusGained,BufEnter * :checktime


"toggle pane width between 100 and 75
let s:panewidthisfull = 0
function! TogglePaneWidth()
  if s:panewidthisfull
    exec 'vertical resize '. string(&columns * 0.75)
    let s:panewidthisfull = 0
  else
    exec 'vertical resize '. string(&columns * 1)
    let s:panewidthisfull = 1
  endif
endfunction

nmap <F4> :call TogglePaneWidth()<CR>
nnoremap <F5> :ls<CR>:b<Space>

"toggle all the on screen markings (for OS copying)
function! ToggleOnScreenMarks()
  set number!
  set relativenumber!
  set list!
  IndentGuidesToggle
endfunction
nmap <F3> :call ToggleOnScreenMarks()<CR>

"toggle spell checker, with language set to english
map <F6> :setlocal spell! spelllang=en_us<CR>


" Tree View File Browser Settings
" " netrw magic
" enable mouse usage. makes it easier to browse multiple tabs
"set mouse=a
" hide netrw top message
let g:netrw_banner=0
" tree listing by default
let g:netrw_liststyle=3
" hide vim swap files
let g:netrw_list_hide='.*\.swp$'
"default to open new tab
let g:netrw_browse_split = 3
let g:netrw_altv = 1
"ensure numbers show in netrw tree listing
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

"ignore certain errors in syntastic, for instance, empty tags
let g:syntastic_html_tidy_ignore_errors=[
  \ " proprietary attribute ",
  \ "trimming empty \<",
  \ "inserting implicit ",
  \ "unescaped \&",
  \ "lacks \"action",
  \ "lacks value",
  \ "lacks \"src",
  \ "is not recognized!",
  \ "discarding unexpected",
  \ "replacing obsolete ",
  \ "plain text isn't allowed in <head> elements",
  \ "attribute name \"[",
  \ "attribute name \"(",
  \ "attribute name \"*ng",
  \ "attribute name \"#"
  \ ]


" Rename tabs to show tab number.
" (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
if exists("+showtabline")
  function! MyTabLine()
    let s = ''
    let wn = ''
    let t = tabpagenr()
    let i = 1
    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let s .= '%' . i . 'T'
      "let s .= (i == t ? '%1*' : '%2*')
      "let s .= '%#TabNum#'
      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let s .= ' '
      let wn = tabpagewinnr(i,'$')

      let s .= i
      "let s .= '%*'
      "let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')
      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        let file = fnamemodify(file, ':p:t')
      endif
      if file == ''
        let file = '(No Name)'
      endif
      let s .= ' ' . file . ' '
      let i = i + 1
    endwhile

    let s .= '%T%#TabLineFill#%='
    let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
    return s
  endfunction
  set stal=2
  set tabline=%!MyTabLine()
  set showtabline=1
  highlight TabNum ctermfg=15 ctermbg=NONE
endif

nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

