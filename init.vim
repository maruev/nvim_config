set mouse=a  " enable mouse
set completeopt-=preview
set encoding=UTF-8
set number relativenumber
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

filetype indent on      " load filetype-specific indent files

inoremap jk <esc>

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim'    
Plug 'tpope/vim-commentary'  " комментирование строк
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
Plug 'tpope/vim-surround'  " surrounding text
Plug 'vim-airline/vim-airline' " красивая строка состояния
Plug 'ryanoasis/vim-devicons' " Красивые иконки в nerdtree

call plug#end()

colorscheme gruvbox

"nerdtree plug keymap settings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Start NERDTree when Vim is started without file arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"tagbar keymap settings
nmap <Del> :TagbarToggle<CR>

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

" highlight 79 column for python filetype
autocmd FileType python set colorcolumn=79

" switch number relativenumber options
nnoremap mm :set nonumber norelativenumber<CR>
nnoremap mk :set number relativenumber<CR>
