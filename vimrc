call plug#begin('~/.vim/plugged')
Plug '/opt/homebrew/bin/fzf'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dyng/ctrlsf.vim'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
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
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
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
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>f :CocCommand prettier.formatFile<CR>
nmap <leader>qf  <Plug>(coc-fix-current)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

function! s:goyo_enter()
  silent CocDisable
endfunction
function! s:goyo_leave()
  silent CocEnable
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
