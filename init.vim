"set to auto read when a file is changed from outsied 
set magic
set autoread
set termguicolors
set nu 
set relativenumber 
set smartcase
set autoindent 
set laststatus=2
set nocompatible
set showmode
set showcmd 
set mouse=a
set t_Co=256 
set tabstop=2 
set shiftwidth=2
set expandtab
set softtabstop=2 
set cursorline
set ruler 
set showmatch 
set incsearch
set ignorecase
filetype plugin on 
filetype indent on 
syntax enable 
set spell 
set cindent
set ttyfast
set list 

inoremap jk <esc>
vnoremap jk <esc>

inoremap <leader>w <esc>:w <cr>
vnoremap <leader>w <esc>:w <cr>
nnoremap <leader>w <esc>:w <cr>

"nnoremap <leader>t :terminal <cr>i 
noremap <leader>ev :tabnew ~/.config/nvim/init.vim <cr>
noremap <leader>f :FZF <cr>
noremap <leader>sv :source ~/.config/nvim/init.vim <cr>
nnoremap <leader>h :help 
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
"nnoremap <leader>e :Defx<cr>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>

" tab setting
noremap <silent><tab>m :tabnew <cr>
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

"fold setting 
nnoremap <leader>fi :set fdm=indent<cr>
nnoremap <leader>fm :set fdm=manual<cr>
nnoremap <leader>fs :set fdm=syntax<cr>

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'dense-analysis/ale'
"Plug 'skywind3000/asyncrun.vim'
"Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'honza/vim-snippets'
Plug 'skywind3000/vim-terminal-help'
"Plug 'liuchengxu/vim-which-key'
"Plug 'ryanoasis/vim-devicons'
"Plug 'junegunn/vim-easy-align'
"Plug 'vimtaku/hl_matchit.vim '
"Plug 'vhda/verilog_systemverilog.vim'
"Plug 'Konfekt/FastFold'
"Plug 'NLKNguyen/c-syntax.vim'
"Plug 'luochen1990/rainbow'
"Plug 'liuchengxu/vista.vim'
"Plug 'rhysd/vim-clang-format'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
"Plug 'jackguo380/vim-lsp-cxx-highlight'


" (Optional) Multi-entry selection UI.
"Plug 'junegunn/fzf'
"Plug 'rust-lang/rust.vim'
"
"colorscheme plugins 
"Plug 'romainl/flattened'
"Plug 'sonph/onehalf', {'rtp': 'vim/'}
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'sainnhe/everforest'
"Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/edge'
"Plug 'ghifarit53/daycula-vim' , {'branch' : 'main'}
"Plug 'arcticicestudio/nord-vim'
"Plug 'jacoborus/tender.vim'
Plug 'adrian5/oceanic-next-vim'
"Plug 'overcache/NeoSolarized'
"Plug 'glepnir/oceanic-material'
"Plug 'lifepillar/vim-solarized8'
"Plug 'junegunn/seoul256.vim'
"Plug 'morhetz/gruvbox'

call plug#end()

colorscheme oceanicnext
set background=dark
let g:gruvbox_contrast_dark="hard"
"let g:gruvbox_transparent_bg=1
"let g:everforest_background = 'medium'
"let g:everforest_transparent_background = 0
let g:lightline = {
      \ 'colorscheme': 'oceanicnext',
      \ }
"let g:Lf_PreviewInPopup = 1

" vim-easy-align plug setting
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"
""""""""""""""""""Auto complete"""""""""""""""""""""""""""
set complete=.,w,i,b,u,d,k
set dictionary=~/.vim/words/uvm_kwords,/usr/share/dict/words
",$VCS_HOME/gui/tb/qdbg_sv.ini
""""""""""""""""""""""""""<localrc>""""""""""""""""""""""""""""
"let g:localrc_filename = '.uvmrc'
"let g:seoul256_background = 233
"let g:seoul256_srgb = 1
"let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" clangd setting 
let g:LanguageClient_serverCommands = {
  \ 'cpp': ['clangd'],
  \ }
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 0
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
