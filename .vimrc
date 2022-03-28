call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'sbdchd/neoformat'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
call plug#end()
let g:lightline = { 'colorscheme': 'gruvbox' }
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme gruvbox
syntax enable
set encoding=utf-8
set background=dark
set expandtab
set mouse=a
set autoindent
set number relativenumber
set ignorecase
set noshowmode
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
set updatetime=100
set laststatus=2
set completeopt=longest,menuone
set clipboard^=unnamed,unnamedplus
set backspace=indent,eol,start

let mapleader=";"
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

nnoremap j gj
nnoremap k gk
inoremap kj <Esc>
map <leader>d :bd<cr>
map <leader>w :w<cr>
map <leader>e :NERDTreeFind<CR>
map <C-e> :NERDTreeToggle<CR>
nnoremap <leader>sc :source ~/.vimrc<CR>
nnoremap <leader>so :e ~/.vimrc<CR>
nnoremap <silent> <Leader>o :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>

function! s:goyo_enter()
  silent CocDisable
endfunction
function! s:goyo_leave()
  silent CocEnable
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
