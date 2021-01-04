set autoindent
set autoread
set clipboard=unnamedplus
set expandtab
set foldmethod=indent
set hidden
set incsearch
set lazyredraw
set magic
set mouse=a
set nobackup
set nocompatible
set noerrorbells
set nohlsearch
set noswapfile
set nowrap
set nowritebackup
set relativenumber
set scrolloff=8
set shiftwidth=4
set smartcase
set smartindent
set smarttab
set spelllang=es,en
set spellsuggest=10
set splitbelow
set splitright
set tabstop=4 softtabstop=4
set termguicolors
set textwidth=70
set wildmode=longest,list,full

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

syntax on
filetype plugin indent on

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
" When focus gained check for changes in files
autocmd FocusGained,BufEnter * :silent! !
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions -=r formatoptions -=o

let mapleader = " "
cmap sd cd %:p:h<CR>
imap ., <Esc>/<++><cr>ca<
map ., <Esc>/<++><cr>ca<
map <C-s> z=
map <leader>% :source ~/.config/nvim/init.vim<CR>
map <leader>r :%s//gc<Left><Left><Left>
map <leader>s :split<CR>
map <leader>th :set hlsearch!<CR>
map <leader>ts :set spell!<CR>
map <leader>v :vsplit<CR>
nmap <C-x>e :
nmap <leader>Q :q!<CR>
nmap <leader>q :q<CR>
nmap <leader>w :w<CR>
nmap <leader>x :wq<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>
vnoremap < <gv
vnoremap > >gv

call plug#begin('~/.vim/plugged')
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
    Plug 'mbbill/undotree'
    Plug 'morhetz/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
call plug#end()

" Nerd tree
map <C-S-e> :NERDTreeToggle<CR>

" Fzf
imap <C-f> <plug>(fzf-complete-path)
map <C-S-f> :Rg<Space>
map <leader>h :History:<CR>
map <C-p> :GFiles<CR>
map <leader>b :Buffers<CR>
map <leader>f :Files<CR>
let $FZF_DEFAULT_COMMAND='find .'
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']

" Undo tree
map <C-\> :UndotreeToggle<CR>

" Git
nmap <leader>gs :G<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gh :diffget //3<CR>
nnoremap <leader>gc :GBranches<CR>

set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

source $HOME/.config/nvim/expansions\.vim
