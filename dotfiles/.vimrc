" Leader
let mapleader = ","

" Mappings
inoremap jk <esc>l
nnoremap <leader>d dd0      " Line cut
nnoremap <leader>w <C-w>w   " Forward pane
nnoremap <leader>W <C-w>W   " Back pane
nnoremap <leader>t gt       " Forward tab
nnoremap <leader>T gT       " Back tab

" Smart Indent
filetype plugin indent on

" Smart case sensitive search
set ignorecase
set smartcase

" Say no to backups
set nobackup

" Clear weird char sequence on start
set t_RV=

" WTF is ex mode anyway
nnoremap Q <nop>

" Highlight current line
set cursorline

" Keep current command in bottom right
set showcmd

" Line numbers
set number

" Pathogen
execute pathogen#infect()

" NERDTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['.DS_Store']

" Golang
au FileType go nmap <leader>r <Plug>(go-run)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Colors and  Syntax Highlighting
syntax enable
"set background=light
"colorscheme solarized

" Bracket/Parentheses match stylen
" -- must come after color scheme
hi MatchParen cterm=underline ctermbg=none ctermfg=none

" History
set history=700

" Killa Noise
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" Tabs
set tabstop=2 shiftwidth=2 expandtab
