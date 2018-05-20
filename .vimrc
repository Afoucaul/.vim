set nocompatible      " Nécessaire
filetype off          " Nécessaire

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" On indique à Vundle de s'auto-gérer :)
Plugin 'gmarik/Vundle.vim'  " Nécessaire
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'elixir-editors/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'


call vundle#end()            " Start Vundle


"command                      detection   plugin       indent ~  
":filetype on                 on          unchanged    unchanged  
":filetype off                off         unchanged    unchanged  
":filetype plugin on          on          on           unchanged  
":filetype plugin off         unchanged   off          unchanged  
":filetype indent on          on          unchanged    on  
":filetype indent off         unchanged   unchanged    off  
":filetype plugin indent on   on          on           on  
":filetype plugin indent off  unchanged   off          off  

" Lets the plugins determine the filetype
filetype plugin on    " I don't know
filetype indent on    " I don't know


" Highlight search results, and maps spacebar to hiding highlight
set hls
"nnoremap <Space> :set hlsearch!<CR>


" Displaying line numbers
set number


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
" set smarttab




" Don't override the register content when pasting
vnoremap <leader>p "_dP


" Allow backspace over autoindent and insert start, but not over line breaks
set backspace=indent,start,eol


" POTENTIALLY USEFUL make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


" UltiSnips keybindings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set runtimepath+=~/.vim/my-snippets


" Statusline
set laststatus=2
