" -----------------PLUGINS--------------------------------
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/frazrepo/vim-rainbow.git'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
if has('win32') || has('win64')
  Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
else
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
endif

" Initialize plugin system
call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set updatetime=300
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


map <Leader> <Plug>(easymotion-prefix)

map <Leader>t :NERDTree

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Move up/down editor lines
nnoremap <Down> gj
nnoremap <Up> gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
"nnoremap / /\v
"vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

nnoremap <Right> l
vnoremap <Right> l
nnoremap <Left> h
vnoremap <Left> h
"nnoremap <Up> k
"vnoremap <Up> k
"nnoremap <Down> j
"vnoremap <Down> j
nnoremap <S-Right> L
vnoremap <S-Right> L
nnoremap <S-Left> H
vnoremap <S-Left> H
nnoremap <S-Up> :tabn<cr>
vnoremap <S-Up> :tabn<cr>
nnoremap <S-Down> :tabp<cr>
vnoremap <S-Down> :tabp<cr>
nnoremap h <Leader>
vnoremap h <Leader>
nnoremap j :tabp<cr>
vnoremap j :tabp<cr>
nnoremap k :tabn<cr>
vnoremap k :tabn<cr>
