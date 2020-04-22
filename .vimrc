" tohyland's vimrc

" Don't need to be compatible with vi
set nocompatible

" Bells are annoying
set belloff=all

" Vundle setup

" Disable filetype for Vundle setup
filetype off

" Add Vundle to the run time path
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins to install
"
" NERDTree for File system exploration
Plugin 'scrooloose/nerdtree'

call vundle#end()

" Enable filetype again
" filetype on -> Triggers vim to attempt syntax highlighting
" filetype plugin on -> Load ftplugin.vim in the runtimepath
" filetype ident on -> Loads the indent.vim in the runtimepath
filetype plugin indent on


