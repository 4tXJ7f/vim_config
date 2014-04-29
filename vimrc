execute pathogen#infect()
call pathogen#helptags()

syntax on
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
set guifont=Anonymous\ Pro:h11 
set antialias

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

autocmd FileType make setlocal noexpandtab

autocmd FileType scala setlocal tabstop=2
autocmd FileType scala setlocal shiftwidth=2
autocmd FileType scala map cm :call scala#commenter#Writer()<CR>
autocmd FileType scala map cf :call scala#commenter#Formatter()<CR>

:nnoremap <C-\> gqip
