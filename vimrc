call plug#begin('~/.vim/plugged')
" Completion
Plug 'ctrlpvim/ctrlp.vim'

" Enhancement
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'

" Motion
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Git
Plug 'tpope/vim-fugitive'
Plug 'rhysd/committia.vim'
Plug 'airblade/vim-gitgutter'

" Color Scheme
Plug 'altercation/vim-colors-solarized'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Vi improved
set nocompatible

" Detect filetype automatically
filetype indent plugin on

" UTF-8 encoding
set encoding=utf-8

" Faster vim
set ttyfast
set lazyredraw

" Remove delay on ESC and O
set timeout timeoutlen=500 ttimeoutlen=100

" Larger history
set history=10000

" autoload changed files
set autoread

" Disable junk files
set noswapfile
set nobackup

" Disable viminfo
set viminfo=""

" Syntax processing
syntax on

" Set colorscheme
colorscheme solarized

" Set background
set background=dark

" Highlight matching parenthesis-like character
set showmatch

" set number of colors supported to 256
set t_Co=256

"Show relative line number
set relativenumber

"Show line number
set number
set relativenumber

"Highlight current line
set cursorline

"Show status line
set laststatus=2

"Spacing between lines
set linespace=4

"Minimum number of lines below the cursor
set scrolloff=5

"Wraps longer lines instead in the screen
set wrap

"Break wrapped lines into multiple lines
set linebreak

"Show difference between tabs and spacese
set list

"Shows chars like tabs, trailing spaces and eol
set listchars=tab:→\ ,trail:·,extends:❯,precedes:❮

"Backspace works normally in all modes
set backspace=indent,eol,start

"Text flow width
set textwidth=80

"Enable column
set colorcolumn=+1

"Enable mouse interactions
set mouse=a

"Split pane below instead on top
set splitbelow

"Split pane on right instead on left
set splitright

"Autocompletes things like filenames and all
set wildmenu

set wildmode=full

"Highlight search results
set hlsearch

"Incrementally highlight search results
set incsearch

"Global changes
set gdefault

"Case-sensitive search
set ignorecase
set smartcase

"Tabs are spaces
set expandtab

"1 tab = 2 spaces
set tabstop=2

"1 tab in insert mode = 2 spaces
set softtabstop=2

"Space when indenting a line or block
set shiftwidth=2

"Auto-indent when a new line is added
set smartindent

"Use the indentation of current line when a new line is added
set autoindent

"Use tabs or spaces based for the new line based on the current line
set copyindent

"Enable code folding
set foldenable

"Folds open
set foldlevelstart=100

"Nested folds
set foldnestmax=10

"Folding based on indentation
set foldmethod=indent

" Tag path
set tags=tags,./tags

" Leader is the COMMA
let mapleader=","

"Toggle folds
nnoremap <space> za

" End of line/ Start of line
noremap H ^
noremap L $

noremap j gj
noremap k gk

"Leave insert mode
inoremap jk <esc>

"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"Disable Arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>

"Toggle background from dark to light
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark")<CR>

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"Search result in the middle on screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Disable ex mode
nnoremap Q <nop>

" Indent whole buffer
nnoremap <leader>= mmgg=G`m=<cr>

" NERDTree show/hide
map <Leader>n :NERDTreeToggle<cr>

" Vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

" Fugative
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gbb :Gblame<cr>

" Airline theme
let g:airline_theme='solarized'

" Copy to clipboard
map <Leader>y "*y

" Paste from clipboard
map <Leader>p "*p

" Toggle panes
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>


" Plugins
" ctrlp
if executable('pt')
  " Use ag over grep
  set grepprg=pt\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'pt %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" NERDTree
let NERDTreeIgnore = ['\.pyc$']
