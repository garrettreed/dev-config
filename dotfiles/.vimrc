" Don't use coompatible mode
set nocompatible

" Leader
let mapleader = ","

" Allows the current buffer to go to the background with changes
" before writing to disk.
set hidden

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set cursorline
set title

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" Highlight search terms
set hlsearch
set incsearch " ...dynamically as they are typed.

" Turn of swapfiles
set noswapfile
set nobackup

" Disable Ex mode
" Ex mode allows multiple commands without typing : each time
" But gets annoying if you type Q accidentaly.
map q: <Nop>
nnoremap Q <nop>

" Mappings
inoremap jk <esc>l
nnoremap <leader>d dd0      " Line cut
nnoremap <leader>w <C-w>w   " Forward pane
nnoremap <leader>W <C-w>W   " Back pane
nnoremap <S-Tab> <<         " shift+tab for un-indent
inoremap <S-Tab> <C-d>


" Auto completion
set wildmenu
set wildmode=longest:full,full

" Smart case sensitive search
" Makes /-style searches case sensitive only
" if there is a capital letter in the expression
set ignorecase
set smartcase

" Tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Display tabs and trailing spaces visually
"set listchars=tab:>-,trail:·
"nmap <silent> <leader>s :set nolist!<CR>  
"set list

set wrap       "Wrap lines
set linebreak  "Wrap lines at convenient points

" Pathogen
execute pathogen#infect()

filetype plugin on
filetype indent on 

" MacVim specific
if has("gui_running")
  colorscheme lucius 
  let g:lucius_style='dark'
  set guifont=Source\ Code\ Pro:h14
endif

" Colors and Syntax Highlighting
" -- must come after colorscheme
syntax enable


" NERDTree
let NERDTreeShowHidden = 1
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeIgnore = ['.DS_Store']
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
autocmd VimEnter * wincmd p

" Bracket/Parentheses match style
" -- must come after color scheme
hi MatchParen cterm=underline ctermbg=none ctermfg=none

" History
set history=700

" No visual bell
set vb t_vb=
