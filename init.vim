call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'preservim/nerdtree'
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
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" KISS navigation
inoremap kj <esc>:w<cr>
nnoremap <c-s> :w<cr>
nnoremap j gj
nnoremap k gk

" Delete previus word 
imap <C-BS> <C-W>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

" Buffers selection
map <leader>b :CtrlPBuffer<CR>
map <leader>h :CtrlPMRU<CR>

" Close buffer
map <leader>d :bd<cr>

"Open & Source this Configuration
map <leader>sc :source ~/.config/nvim/init.vim<CR> 
map <leader>oc :e ~/.config/nvim/init.vim<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

" Plugins mapping
map <C-e> :NERDTreeToggle<CR>

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
