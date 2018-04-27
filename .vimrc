set nocompatible      " Nécessaire
filetype off          " Nécessaire

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique à Vundle de s'auto-gérer :)
Plugin 'gmarik/Vundle.vim'  " Nécessaire
Plugin 'elixir-editors/vim-elixir'

"
" C'est ici que vous allez placer la liste des plugins que Vundle doit gérer
"

call vundle#end()            " Nécessaire
filetype plugin indent on    " Nécessaire


" Underline the line under the cursor
set cursorline


" Setting tabs up

" The width of a hard tabstop measured in spaces -- effectively the (maximum) width of an actual tab character.
set tabstop=8 
" The size of an indent. It's also measured in spaces.
set softtabstop=0 
" Setting this to a non-zero value other than tabstop will make the tab key (in insert mode) insert a combination of spaces (and possibly tabs) to simulate tab stops at this width.
set expandtab 
" Enabling this will make the tab key (in insert mode) insert spaces instead of tab characters. This also affects the behavior of the retab command.
set shiftwidth=4
" Enabling this will make the tab key (in insert mode) insert spaces or tabs to go to the next indent of the next tabstop when the cursor is at the beginning of a line.
set smarttab


" Don't override the register content when pasting
vnoremap <leader>p "_dP
