set nocompatible
syntax enable
filetype off

map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" so that vim thinks *.md is markdown and not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" glsl highlighting for .fx files
autocmd! BufNewFile,BufRead *.vs,*.fs,*.fx set ft=glsl

colorscheme wombat
set guifont=Menlo-Regular:h14

filetype plugin indent on

set hlsearch
hi Search guibg=LightBlue
set et sw=2 ts=2 sts=2 encoding=utf-8
set nowrap

vnoremap < <gv
vnoremap > >gv

function! SetupPython()
  setlocal sw=2 ts=2 sts=2
endfunction
