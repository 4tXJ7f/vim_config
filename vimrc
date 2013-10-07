execute pathogen#infect()
call pathogen#helptags()

syntax on
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized

set number
set expandtab
set tabstop=3
set shiftwidth=3
set ruler

map <C-n> :NERDTreeToggle<CR>

au BufRead *.tex setlocal spell
au BufRead *.md setlocal spell
