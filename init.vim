" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(has("nvim") ? stdpath('data') . '/plugged' : '~/.vim/plugged')

    Plug 'preservim/nerdtree' " Side menu
    Plug 'editorconfig/editorconfig-vim'
    Plug 'ryanoasis/vim-devicons' " Icons for Plugins
    Plug 'vim-airline/vim-airline' " Statusline
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "File search
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-fugitive' " Vim git
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'mattn/emmet-vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
    Plug 'jparise/vim-graphql'
    Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript'], 'do': 'make install' }
    Plug 'chr4/nginx.vim'
    Plug 'fatih/vim-go'
    Plug 'jparise/vim-graphql'
    Plug 'sheerun/vim-polyglot'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'tpope/vim-surround'
    Plug 'easymotion/vim-easymotion'
    " Themes
    Plug 'Rigellute/shades-of-purple.vim'
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'ayu-theme/ayu-vim'
call plug#end()




" Global Options
syntax on
filetype plugin indent on
set encoding=UTF-8


set hidden
set number
set relativenumber
set splitbelow splitright
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
set incsearch ignorecase smartcase hlsearch
set background=dark
set title
set path=.,,**
set wildignore+=**/node_modules/**
set list listchars=trail:»,tab:»-
set termguicolors
set ruler
set cursorline
set scrolloff=8
set mouse+=a
colorscheme gruvbox



" Variables and Functions
let mapleader = ' '
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $FZF_DEFAULT_COMMAND = 'ag -g  ""'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }



if has("nvim")
  au! TermOpen * tnoremap <Esc> <c-\><c-n>
  au! FileType fzf tunmap <Esc>
endif

autocmd! FileType vim nnoremap <leader>rv :run %<CR>




" ======  Shortcuts  ======
" Source vimrc
noremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <silent><leader>1 :w \| :source ~/.vimrc \| :PlugInstall<CR>
" Clear highlight word
nnoremap <silent> <leader>, :noh<CR>
" Buffers list fzf
noremap <silent> <leader>b :Buffers<CR>
" Emmet toggle
imap <silent> <leader>em <C-y>,
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
nmap <leader>jsd :JsDoc<CR>
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
inoremap <silent> <C-v> <ESC>"+pA
" Accept left in merge conflict
nnoremap gdh :diffget //2<CR>
" Accept right in merge conflict
nnoremap gdl :diffget //3<CR>

nmap <leader><leader>. <Plug>(easymotion-repeat)
nmap <leader><leader>f <Plug>(easymotion-fl)
nmap <leader><leader>j <Plug>(easymotion-overwin-line)
nmap <leader><leader>k <Plug>(easymotion-overwin-line)
nmap <leader><leader>w <Plug>(easymotion-overwin-w)

if has('nvim')
    tmap <silent> <M-h> <C-\><C-n><C-w>h
    tmap <silent> <M-l> <C-\><C-n><C-w>l
    tmap <silent> <M-j> <C-\><C-n><C-w>j
    tmap <silent> <M-k> <C-\><C-n><C-w>k
endif


" Modules
source $HOME/.config/nvim/plugins/coc.vim
source $HOME/.config/nvim/plugins/go.vim
