" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')
	Plug 'preservim/nerdtree'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-fugitive'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'mattn/emmet-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'
  Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript'], 
  \ 'do': 'make install'
\}
  Plug 'chr4/nginx.vim'
	" Themes
	Plug 'morhetz/gruvbox'
	Plug 'joshdick/onedark.vim'
	Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sheerun/vim-polyglot'
call plug#end()




" Options
syntax on
filetype plugin indent on
set encoding=UTF-8


set hidden
set number
set relativenumber
set splitbelow splitright
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set background=dark
set title
set path=.,,**
set wildignore+=**/node_modules/**
set list listchars=trail:»,tab:»-
set termguicolors
set ruler
set cursorline
colorscheme dracula
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none



" Variables and Functions
let mapleader = ','
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }






" Shortcuts
noremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <silent> <leader><space> :noh<CR>
imap <silent> <leader>e <C-y>,
nmap <silent> <space>q <C-w>q
nmap <silent> <space>h :bp<CR>
nmap <silent> <space>l :bl<CR>
noremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-b> :NERDTreeToggle \| NERDTreeRefreshRoot<CR>
noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-f> :Rg<CR>
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-l> <C-w>l
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <leader>z :JsDoc<CR>




" Modules
source $HOME/.config/nvim/plugins/coc.vim
