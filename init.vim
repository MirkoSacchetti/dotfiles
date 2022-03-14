call plug#begin('~/.vim/plugged')
Plug '/opt/homebrew/bin/fzf'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lualine/lualine.nvim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dyng/ctrlsf.vim'
Plug 'tomlion/vim-solidity'
Plug 'ayu-theme/ayu-vim'
call plug#end()

colorscheme ayu
set termguicolors
set wildignore+=**/.git/*
set mouse=a
set autoindent
set ignorecase
set nobackup
set number
set relativenumber
set noswapfile
set hidden
set nohlsearch 
set cursorline
set incsearch
set smarttab
set shiftwidth=2
set softtabstop=2
set scrolloff=8
set signcolumn=yes
set tabstop=4
set updatetime=50
set lbr
set tw=500
set cmdheight=2
set completeopt=longest,menuone
set clipboard^=unnamed,unnamedplus

let mapleader=" "
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']


inoremap <C-c> <esc>
" remove ms windows shit
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
nmap <leader>w :w!<cr>
map <leader>d :bd<cr>
map <leader>sc :source ~/.config/nvim/init.vim<CR> 
map <leader>oc :e ~/.config/nvim/init.vim<CR> 
" Plugins mapping
map <C-e> :NERDTreeToggle<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

lua << END
require('lualine').setup()
require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
require('telescope').load_extension('fzf')

END

