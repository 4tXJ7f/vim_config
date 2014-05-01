execute pathogen#infect()
call pathogen#helptags()

syntax on
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
set guifont=Anonymous\ Pro:h11 
set antialias

let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden
set autoindent 
set number
set expandtab
set tabstop=3
set shiftwidth=3
set ruler
set hlsearch
set cursorline

map <C-n> :NERDTreeToggle<CR>

au BufRead *.tex setlocal spell
au BufRead *.md setlocal spell

set colorcolumn=80

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

filetype plugin indent on
autocmd FileType make setlocal noexpandtab
autocmd FileType scala setlocal tabstop=2
autocmd FileType scala setlocal shiftwidth=2
autocmd FileType scala map <leader>cm :call scala#commenter#Writer()<CR>
autocmd FileType scala map <leader>cf :call scala#commenter#Formatter()<CR>

:nnoremap <C-\> gqip
