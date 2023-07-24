filetype plugin indent on
autocmd! BufRead,BufNewFile ~/.vim/* setfiletype vim

set autoread

" Files
let mapleader = ","

nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
map <leader>pp :setlocal paste!<cr>

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

runtime functions
runtime ui
runtime colors
runtime editor

set expandtab
