syntax enable

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
"Plug 'puremourning/vimspector'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()

" Windows terminal stuff
set t_Co=256
set belloff=all

" The best colour scheme
colorscheme gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

" Basic settings
let mapleader=","
set number
set relativenumber
set encoding=utf-8
scriptencoding=utf-8
set fileencoding=utf-8
set tabstop=4
set listchars=space:·,tab:⁞- list
set shiftwidth=4
set clipboard=unnamed
set cursorline
set colorcolumn=80
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nowrap
set hidden
set scrolloff=8
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

" Blend BG with windows terminal
highlight Normal guibg=NONE ctermbg=NONE

" Map Ctrl+S to save.
nmap <C-s> :w<Enter>
imap <C-s> <Esc>:w<Enter>i

" Move selected lines
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Replace selected characters with register.
xnoremap <leader>p "_dP

" Search for the word under the cursor.
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>

" Make Y sane (yank to end of line).
nnoremap Y y$

" Plugin configs
source ~/.config/nvim/airline_init.vim
source ~/.config/nvim/syntastic_init.vim
source ~/.config/nvim/telescope_init.vim
source ~/.config/nvim/crtlp_init.vim
