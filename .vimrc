" ============
" Plugins List
" ============
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdcommenter'
Plug 'ap/vim-css-color'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
call plug#end()


" ===========
" My Settings
" ===========
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set number
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set updatetime=100


" ============
" Color Scheme
" ============
set t_Co=256
colorscheme onedark
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


" ====================
" Key Map for NerdTree
" ====================
map <C-o> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1



" ===================
" Emmet Configuration
" ===================
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,htmldjango,css EmmetInstall

nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk


" =======================
" Lightline Configuration
" =======================
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ }

