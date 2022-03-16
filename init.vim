call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
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

Plug 'sainnhe/everforest'
Plug 'shatur/neovim-ayu'
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme ayu-mirage
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

let g:gruvbox_contrast_dark = 'soft'
let mapleader=" "
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
inoremap <C-c> <esc>
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
nmap <leader>sc :source ~/.config/nvim/init.vim<CR> 
nmap <leader>oc :e ~/.config/nvim/init.vim<CR>
nmap <leader>d :bd<CR>
nmap <leader>n :bn<CR>
nmap<leader>w :w!<CR>
map <C-f> <cmd>NERDTreeFind<CR>
map <C-e> <cmd>NERDTreeToggle<CR>
nnoremap <leader>p <cmd>FZF<cr>
nnoremap <leader>fg <cmd>Ag<cr>
nnoremap <leader>fb <cmd>Buffers<cr>
nnoremap <leader>fs <cmd>:GFiles?<cr>
nnoremap <leader>fx <cmd>Commands<cr>
nnoremap <leader>fr <cmd>Telescope registers<cr>

nnoremap <silent>K<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

lua require ('conf')
