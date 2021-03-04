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
    Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript'], 'do': 'make install' }
    Plug 'chr4/nginx.vim'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'fatih/vim-go'
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





" ======  Shortcuts  ======
" Source vimrc
noremap <silent> <leader>sv :source $MYVIMRC<CR>
" Clear highlight word
nnoremap <silent> <leader>, :noh<CR>
" Buffers list fzf
noremap <silent> <leader>b :Buffers<CR>
" Emmet toggle
imap <silent> <leader>e <C-y>,
" Quit buffer
nmap <silent> <leader>q <leader>h:bd #<CR>
" Previous Buffer
nmap <silent> <leader>h :bp<CR>
" Next buffer
nmap <silent> <leader>l :bn<CR>
" Show git index
nmap <silent> <leader>gs :G<CR>
" Nerd menu
nnoremap <leader>nn :NERDTreeToggle \| NERDTreeRefreshRoot<CR>
" Focus file in Nerd menu
nnoremap <leader>nf :NERDTreeFind<CR>
" JSDOC
nmap <leader>z :JsDoc<CR>
" Show branches
nnoremap <leader>gc :GBranches<CR>
" Save buffer
noremap <silent> <C-s> :w<CR>
" FZF Files
noremap <silent> <C-p> :Files<CR>
" FZF Files content
noremap <silent> <C-f> :Rg<CR>
" Buffer left
nmap <silent> <C-h> <C-w>h 
" Buffer right
nmap <silent> <C-l> <C-w>l 
" Buffer bottom
nmap <silent> <C-j> <C-w>j
" Buffer top
nmap <silent> <C-k> <C-w>k 
" Paste system clipboard
nnoremap <silent> <C-v> "+p 
" Paste system clipboard INSERT mode
inoremap <silent> <C-v> <ESC>"+p
" Accept left in merge conflict
nnoremap gdh :diffget //2<CR>
" Accept right in merge conflict
nnoremap gdl :diffget //3<CR>


" Modules
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/go.vim
