
call plug#begin(stdpath('data') . '/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" themes

call plug#end()

syntax on
set number
set relativenumber
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none
set termguicolors
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE
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
let mapleader=","




" Shortcuts
nnoremap <silent> <leader><space> :noh<CR>
imap <leader><leader> <C-y>,
nmap <leader><leader> <C-y>,
noremap <leader>ne :NERDTreeToggle<CR>



" Neovim :Terminal
tmap <Esc> <C-\><C-n>




" Plugin configuration
let NERDTreeShowHidden=1
" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''


" Modules

source $HOME/.config/nvim/config/coc.vim
