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
colorscheme gruvbox
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none



" Variables and Functions
let mapleader = ','
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
let g:spotify_show_status = 1

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
if has("nvim")
  au! TermOpen * tnoremap <Esc> <c-\><c-n>
  au! FileType fzf tunmap <Esc>
endif





" Shortcuts
noremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <silent> <leader><space> :noh<CR>
noremap <silent> <leader>b :Buffers<CR>
imap <silent> <leader>e <C-y>,
nmap <silent> <space>q <space>h:bd #<CR>
nmap <silent> <space>h :bp<CR>
nmap <silent> <space>l :bn<CR>
noremap <silent> <C-s> :w<CR>
nnoremap <leader>nn :NERDTreeToggle \| NERDTreeRefreshRoot<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-f> :Rg<CR>
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-l> <C-w>l
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <leader>z :JsDoc<CR>
nnoremap <silent> <C-v> "+p
inoremap <silent> <C-v> <ESC>"+p
tnoremap <Esc> <C-\><C-n>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>
nmap <silent> <leader>gs :G<CR>


" Modules
source $HOME/.config/nvim/plugins/coc.vim




