" w - Jump to start of word
" e - Jump to end of word
" 5gg - go to line 5
" A - insert (append) at the end of the line
" o - append (open) a new line below the current line
" o - append (open) a new line above the current line
" ~ - switch case
" dib - Delete between paremtheses (...)

set encoding=UTF-8
syntax enable
set number
set tabstop=2
set shiftwidth=2
filetype indent on
set autoindent
set expandtab
set hlsearch    " highlight all search results
set smartcase
set incsearch   " show incremental search results as you type
set noswapfile  " disable swap file
set showmatch
set spell
set spelllang=en_us

command! Config execute ':e $MYVIMRC'
command! Reload execute 'source ~/.vimrc'

let python_highlight_all = 1

autocmd filetype javascript nnoremap <F9> :w <bar> exec '!node '.shellescape('%')<CR>
autocmd filetype python nnoremap <F9> :w <bar> exec '!python '.shellescape('%')<CR>
autocmd filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

nnoremap <F10>f :exe ':silent !firefox %'<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

" AUTO CLOSE PARENTHESES
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

nmap <F6> :NERDTreeToggle<CR>

call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal.vim'
Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'prettier/vim-prettier', {
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

                            " CSS & SCSS
Plug 'cakebaker/scss-syntax.vim'                " syntax highlighting


                            " PYTHON
Plug 'Vimjas/vim-python-pep8-indent'            " pep8 indenting
Plug 'vim-python/python-syntax'                 " syntax highlighting
call plug#end()

colorscheme wal

" Trigger configuration (Optional)
let g:UltiSnipsExpandTrigger="<C-l>"
