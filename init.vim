
call plug#begin(stdpath('data') . '/plugged')

    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-syntastic/syntastic'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'mattn/emmet-vim'
    Plug 'morhetz/gruvbox'
    Plug 'gertjanreynaert/cobalt2-vim-theme'
    Plug 'joshdick/onedark.vim'

call plug#end()

syntax on
set number
set relativenumber
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title
set splitbelow splitright
set path=.,,**
set wildignore+=**/node_modules/** 
let mapleader=","



" Shortcuts
nnoremap <silent> <leader><space> :noh<CR>
nmap <leader><leader> <C-y>,
noremap <silent> <leader>ne :NERDTree \| NERDTreeRefreshRoot<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>


" ,eovim :Terminal
tmap <Esc> <C-\><C-n>




" Plugin configuration
let NERDTreeShowHidden=1
" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1


let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
"autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
highlight Normal ctermbg=none guibg=none
highlight SignColumn ctermbg=none guibg=none
highlight LineNr ctermbg=none guibg=none


" Modules

source $HOME/.config/nvim/config/coc.vim
source $HOME/.config/nvim/config/syntastic.vim
source $HOME/.config/nvim/config/fuzzy.vim
