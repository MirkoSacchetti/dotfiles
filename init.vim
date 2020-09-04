call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'davidhalter/jedi-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dyng/ctrlsf.vim'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
call plug#end()
colorscheme gruvbox
syntax enable
set expandtab
set mouse=a
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4
set expandtab
set number relativenumber
set ignorecase
set nobackup
set noswapfile
set hidden
set incsearch
set nohlsearch 
set linebreak
set cursorline
set clipboard^=unnamed,unnamedplus
let mapleader=";"
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_relative=1
let g:ctrlp_user_command = ['.git', 'node_modules']

" KISS navigation
inoremap kj <esc>:w<cr>
nnoremap <c-s> :w<cr>
nnoremap j gj
nnoremap k gk

" Delete previus word 
imap <C-BS> <C-W>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

map <leader>d :bd<cr>

map <leader>sc :source ~/.config/nvim/init.vim<CR> 
map <leader>oc :e ~/.config/nvim/init.vim<CR>

" Plugins mapping
map <C-e> :NERDTreeToggle<CR>
map <leader>b :CtrlPBuffer<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
map <C-p> :CrtlPMRU<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

command! -nargs=0 Prettier :CocCommand prettier.formatFile
