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
    Plug 'stsewd/fzf-checkout.vim'
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
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
set incsearch ignorecase smartcase hlsearch
set nowrap
set background=dark
set title
set path=.,,**
set wildignore+=**/node_modules/**
set list listchars=trail:»,tab:»-
set termguicolors
set ruler
set cursorline
set scrolloff=8
colorscheme gruvbox
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none



" Variables and Functions
let mapleader = ' '
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
noremap <silent> <leader>sv :source $MYVIMRC<CR> " Source vimrc
nnoremap <silent> <leader><leader> :noh<CR> " Clear highlight word
noremap <silent> <leader>b :Buffers<CR> " Buffers list fzf
imap <silent> <leader>e <C-y>, " Emmet toggle
nmap <silent> <leader>q <leader>h:bd #<CR> " Quit buffer
nmap <silent> <leader>h :bp<CR> " Previous Buffer
nmap <silent> <leader>l :bn<CR> " Next buffer
nmap <silent> <leader>gs :G<CR> " Show git index
nnoremap <leader>nn :NERDTreeToggle \| NERDTreeRefreshRoot<CR> " Nerd menu
nnoremap <leader>nf :NERDTreeFind<CR> " Focus file in Nerd menu
nmap <leader>z :JsDoc<CR> " JSDOC
nnoremap <leader>gc :GBranches<CR> " Show branches
noremap <silent> <C-s> :w<CR> " Save buffer
noremap <silent> <C-p> :Files<CR> " FZF Files
noremap <silent> <C-f> :Rg<CR> " FZF Files content
nmap <silent> <C-h> <C-w>h " Buffer left
nmap <silent> <C-l> <C-w>l " Buffer right
nmap <silent> <C-j> <C-w>j " Buffer bottom
nmap <silent> <C-k> <C-w>k " Buffer top
nnoremap <silent> <C-v> "+p " Paste system clipboard
inoremap <silent> <C-v> <ESC>"+p " Paste system clipboard INSERT mode
nnoremap gdh :diffget //2<CR> " Accept left in merge conflict
nnoremap gdl :diffget //3<CR> " Accept right in merge conflict

















" Modules
source $HOME/.config/nvim/plugins/coc.vim




