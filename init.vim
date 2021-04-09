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

inoremap jk <esc>
vnoremap jk <esc>
let mapleader=","
nnoremap <leader>t :terminal <cr>i 
noremap <leader>ev :vs ~/.config/nvim/init.vim <cr>
noremap <leader>sv :source ~/.config/nvim/init.vim <cr>
nnoremap <leader>h :help 
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
inoremap <leader>w :<esc>:w<cr>
nnoremap <leader>e :Defx<cr>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>

" tab setting
noremap <silent><tab>m :tabnew<cr>
noremap <silent><tab>e :tabclose<cr>
noremap <silent><tab>n :tabn<cr>
noremap <silent><tab>p :tabp<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
"Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'junegunn/seoul256.vim'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'sainnhe/everforest'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/edge'
"Plug 'dense-analysis/ale'
"Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
Plug 'arcticicestudio/nord-vim'
Plug 'jacoborus/tender.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets'
Plug 'skywind3000/vim-terminal-help'
call plug#end()
colorscheme tender
set bg=dark
"let g:gruvbox_contrast_dark="hard"
let g:gruvbox_transparent_bg=1
let g:everforest_background = 'hard'
let g:everforest_transparent_background = 1
let g:lightline = {
      \ 'colorscheme': 'tender',
      \ }
