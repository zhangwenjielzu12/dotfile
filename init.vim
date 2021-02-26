set nu 
set relativenumber 
set laststatus=2
set nocompatible
syntax on 
set showmode
set showcmd 
set mouse=a
set t_Co=256 
set autoindent 
set tabstop=2 
set shiftwidth=2
set expandtab
set softtabstop=2 
set cursorline
set ruler 
set showmatch 
set incsearch
set ignorecase
set spell spelllang=en_us

inoremap jk <esc>
vnoremap jk <esc>
let mapleader="\ "
noremap <leader>w <c-w>
nnoremap <leader>ff :FZF <cr>
nnoremap <leader>t :terminal <cr> i 
nnoremap <leader>fi :set fdm=indent<cr>
nnoremap <leader>fs :set fdm=syntax<cr>
nnoremap <leader>ev :vs ~/.vimrc<cr>
nnoremap <leader>sv :so ~/.vimrc<cr>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
"Plug 'preservim/tagbar'
"Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'romainl/flattened'
"Plug 'ajmwagar/vim-deus'
Plug 'joshdick/onedark.vim'
"Plug 'skywind3000/asynctasks.vim'
"Plug 'skywind3000/asyncrun.vim'
Plug 'jacoborus/tender.vim'
Plug 'junegunn/seoul256.vim'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'sickill/vim-monokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
call plug#end()
"colorscheme monokai
colorscheme PaperColor
set bg=dark
let g:lightline = {  'colorscheme': 'PaperColor',  }
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
