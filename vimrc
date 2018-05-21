if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


set nocompatible
set t_Co=256


filetype off

call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'elixir-editors/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'

call plug#end()


" Colorscheme configuration
set background=dark                     " Select dark solarized
color solarized                         " Select solarized
hi Normal guibg=NONE ctermbg=NONE       " Enable transparent background


" NERDTree configuration: open an explorer when vim is launched without file
" to edit
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Highlight search results, and maps spacebar to hiding highlight
set hls
"nnoremap <Space> :set hlsearch!<CR>


" Displaying line numbers
set number relativenumber


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
