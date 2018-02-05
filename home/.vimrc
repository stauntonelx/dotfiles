" Vim instellingen, Jack van Lisdonk

set nocompatible	" use vim settings

" pathogen plugin
execute pathogen#infect()
syntax on
filetype plugin indent on

" syntax highlighting and colorscheme 
if &t_Co > 2 || has("gui_running")
  colo wombat256	" color scheme
endif

set background=dark
set history=10000
set tabstop=4
set laststatus=2
set number
set hlsearch
