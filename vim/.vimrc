set nocompatible
syntax enable
filetype off

let mapleader = ","

map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" show dotfiles: netrw when invoked directly, NERDTree when it hijacks a directory buffer (e.g. "vim .")
let g:netrw_hide = 0
let g:NERDTreeShowHidden = 1

" cwd to current buffer's directory
nnoremap <leader>cd :lcd %:h<CR>

" so that vim thinks *.md is markdown and not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" glsl highlighting for .fx files
autocmd! BufNewFile,BufRead *.vs,*.fs,*.fx set ft=glsl
" jinja2
autocmd! BufNewFile,BufRead,BufReadPost *.j2 set filetype=yaml.jinja2

colorscheme wombat
set guifont=Menlo-Regular:h14

filetype plugin indent on

set hlsearch
hi Search guibg=LightBlue
set et sw=2 ts=2 sts=2 encoding=utf-8
set nowrap
set number
set wildmenu
set noswapfile nobackup

vnoremap < <gv
vnoremap > >gv

function! SetupPython()
  setlocal sw=2 ts=2 sts=2
endfunction
