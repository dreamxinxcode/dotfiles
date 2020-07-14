syntax enable
set nu
set ts=4 sw=4
set smarttab
set shiftwidth
filetype indent on
set autoindent
set showmatch
set ruler
set encoding=utf-8

let python_highlight_all = 1

autocmd filetype python nnoremap <F9> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype javascript noremap <F9> :w <bar> exec '!node '.shellescape('%')<CR>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

nnoremap <F10>f :exe ':silent !firefox %'<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

" AUTO CLOSE PARENTHESES
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

map <C-n> :NERDTreeToggle<CR>
"Auto open NERDTree
"autocmd vimenter * NERDTree

call plug#begin()

Plug 'Chiel92/vim-autoformat'

Plug 'lilydjwg/colorizer'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-scripts/indentpython.vim'

Plug 'jistr/vim-nerdtree-tabs'

Plug 'terryma/vim-multiple-cursors'

Plug 'mxw/vim-jsx'

Plug 'pangloss/vim-javascript' 

call plug#end()

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
