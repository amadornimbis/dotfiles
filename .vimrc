" Maintainer: Eric Amador
" Last change:  2014 May 16

syntax on

" Vundle reccoments that all Vundle installs occur at
" top of vimrc

" BEGIN VUNDLE
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'      " let Vundle mange Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'nvie/vim-flake8.git'
Plugin 'chriskempson/tomorrow-theme.git'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'bronson/vim-trailing-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" END VUNDLE

colorscheme Tomorrow-Night-Bright
set nocompatible                " it's called vim for a reason
set autoindent                  " be smart
set smarttab                    " also smart
set shiftwidth=4                " width of line-initial tab
set shiftround
set softtabstop=4               " 4 space tab (soft)
set tabstop=4                   " 4 space tab (hard)
set expandtab                   " use soft tabs
set bs=2                        " make backspace work like it should
set mouse=nv                    " let the mouse do stuff
set smartcase                   " case-insensitive searching
set number                      " show line numbers
set autoread                    " automatically check for changes to the file
set noerrorbells                " DESTROY ALL BELLS
set vb t_vb=                    " HATE BELLS
set showmatch                   " highlight matching brackets
set hlsearch                    " highlight search term
set showtabline=1               " only show file tabs when more than one file open
set t_Co=256                    " use 256 colors
set title                       " set title window
set showcmd                     " shows the cmdline (shows # of lines in visual mode)
set laststatus=2                " always show the status line
set ruler                       " show cursor pos
set incsearch                   " use incremental searching

" setting vim temp files in the vimtmp folder in the home directory
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

" TODO when setting up do:
" mkdir .vim/colors
" cp .vim/bundle/tomorrow-theme/vim/colors/Tomorrow-Night-Bright.vim
" ./vim/colors/Tomorrow-Night-Bright.vim
