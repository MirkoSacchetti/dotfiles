call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
call plug#end()

syntax enable
set encoding=utf-8
set background=dark
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme gruvbox
set expandtab
set mouse=a
set autoindent
set number relativenumber
set ignorecase
set nobackup
set nowritebackup
set noswapfile
set hidden
set nohlsearch 
set cursorline
set incsearch
set smarttab
set shiftwidth=2
set softtabstop=2
set cmdheight=2
set tabstop=2
set lbr
set shortmess+=c
set updatetime=300
set laststatus=2
set completeopt=longest,menuone
set clipboard^=unnamed,unnamedplus
set backspace=indent,eol,start

let mapleader=";"
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_relative=1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

nnoremap j gj
nnoremap k gk
imap jk <Esc>
imap kj <Esc>
" " Delete previus word 
 imap <C-BS> <C-W>
 noremap! <C-BS> <C-w>
 noremap! <C-h> <C-w>
" remove ms windows shit
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
nmap <leader>w :w!<cr>
map <leader>d :bd<cr>
map <leader>sc :source ~/.vimrc<CR> 
" Plugins mapping
map <C-e> :NERDTreeToggle<CR>
map <C-p> :CrtlPMRU<CR>
map <leader>b :CtrlPBuffer<CR>
