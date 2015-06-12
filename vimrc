execute pathogen#infect()
call pathogen#helptags()

syntax on
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
set guifont=Fira\ Mono:h9
set antialias

let mapleader="-"

" Quickly edit/reload the vimrc file
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <silent> <leader>sv :source $MYVIMRC<CR>

set hidden
set number
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set ruler
set hlsearch
set cursorline

nnoremap <C-n> :NERDTreeToggle<CR>

au BufRead *.tex setlocal spell
au BufRead *.md setlocal spell

set colorcolumn=80

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

filetype plugin indent on

augroup filetypes
   autocmd!
   autocmd FileType make setlocal noexpandtab
   autocmd FileType scala noremap <buffer> <localleader>cm :call scala#commenter#Writer()<CR>
   autocmd FileType scala noremap <buffer> <localleader>cf :call scala#commenter#Formatter()<CR>
augroup END

nnoremap <C-\> gqip

" Ctrl+u to make a word uppercase in insert mode
inoremap <c-u> <esc>viwUi
nnoremap <c-u> viwU

" Status line (vim-airline)
set laststatus=2
set ttimeoutlen=50

let g:easytags_languages = {
\   'haskell': {
\       'cmd': '~/.cabal/bin/hasktags',
\       'args': [],
\   }
\}
