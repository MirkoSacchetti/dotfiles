call plug#begin('~/.vim/plugged')
Plug '/opt/homebrew/bin/fzf'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
call plug#end()

syntax enable
set encoding=utf-8
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme gruvbox
set expandtab
set mouse=a
set autoindent
set number relativenumber
set ignorecase
set guioptions+=a
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
set clipboard=unnamedplus
set backspace=indent,eol,start
let mapleader=";"
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nnoremap j gj
nnoremap k gk
imap jk <Esc>
imap kj <Esc>
imap <C-BS> <C-W>
noremap! <C-BS> <C-w>
 noremap! <C-h> <C-w>
nmap <leader>w :w!<cr>
map <leader>d :bd<cr>
map <leader>sc :source ~/.vimrc<CR> 
map <C-e> :NERDTreeToggle<CR>
map <leader>o :Files<CR>
map <leader>b :Buffers<CR>

function! s:goyo_enter()
  silent CocDisable
endfunction
function! s:goyo_leave()
  silent CocEnable
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
