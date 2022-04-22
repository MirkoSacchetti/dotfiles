call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'preservim/nerdtree'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-vsnip'

Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
set clipboard^=unnamed,unnamedplus

set cmdheight=2
set completeopt=menu,menuone,noselect
set cursorline
set hidden
set ignorecase
set mouse=a
set nobackup
set nohlsearch 
set noswapfile
set number
set relativenumber
set scrolloff=8
set shiftwidth=2
set signcolumn=yes
set softtabstop=2
set tabstop=4
set termguicolors
set textwidth=0
set wildignore+=**/.git/*

let mapleader=";"
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
inoremap <C-c> <esc>
inoremap kj <Esc>
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
nmap <leader>d :bd<CR>
nmap <leader>n :bn<CR>
nmap<leader>w :w!<CR>
map <C-f> <cmd>NERDTreeFind<CR>
map <C-e> <cmd>NERDTreeToggle<CR>
nnoremap <leader>o <cmd>lua require('fzf-lua').files()<CR>
nnoremap <leader>fg <cmd>lua require('fzf-lua').grep()<CR>
nnoremap <leader>b <cmd>lua require('fzf-lua').buffers()<CR>
nnoremap <leader>fx <cmd>lua require('fzf-lua').lsp_references()<CR>
nnoremap <leader>fr <cmd>lua require('fzf-lua').registers()<CR>

nnoremap <silent>K<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

lua require ('conf')
