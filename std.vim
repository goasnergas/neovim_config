set mouse=

"searchings
set ignorecase
set smartcase
set hlsearch
set incsearch

"optimizations
set lazyredraw

"regex
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Enable syntax highlighting
syntax enable
set background=dark

"encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, we're using git
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Visual mode pressing * searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Always show the status line
set laststatus=2

"TODO: I'm not sure this is useful while using vim-airline (see statusbar.vim)
" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Delete trailing white space
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

" hightlight trailing ws
:highlight ExtraWhitespace ctermbg=red guibg=red

:match ExtraWhitespace /\s\+$/

map <F3> :set number!<CR>


"TODO: bind Ctrl+PgDwn and Ctrl+PgUp to :tabn and :tabp

"Enable ftplugin
filetype plugin indent on


:set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
:autocmd OptionSet guicursor noautocmd set guicursor=


:set tw=120
