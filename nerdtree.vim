Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

map <F2> :NERDTreeToggle<CR>

let g:NERDTreeWinPos      = "left"
let NERDTreeShowHidden    = 0
let NERDTreeIgnore        = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize     = 35
let NERDTreeChDirMode     = 2
let NERDTreeShowBookmarks = 1
let NERDTreeMinimalUI     = 0
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
map <leader>T  :NERDTreeFind<cr>

"How can I open a NERDTree automatically when vim starts up?
autocmd VimEnter * NERDTree
"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"jump to file pane
autocmd VimEnter * wincmd l
autocmd BufNew   * wincmd l

"permet de fermer un buffer avec la touche c
nnoremap c :bp\|bd #<CR>

