" tohyland's vimrc

" Indicate when the <leader> key has been pressed. Along with other keys
set showcmd "not sure this is working at the moment?

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

" Badwolf colors
Plugin 'sjl/badwolf'

" UndoTree Plugin
Plugin 'mbbill/undotree'

" Plugin to strip trailing whitespace on only lines that are modified.
Plugin 'axelf4/vim-strip-trailing-whitespace'

call vundle#end()


" Enable filetype again
" filetype on -> Triggers vim to attempt syntax highlighting
" filetype plugin on -> Load ftplugin.vim in the runtimepath
" filetype ident on -> Loads the indent.vim in the runtimepath
filetype plugin indent on
"
" Enable syntax processing
syntax enable

" Set Vim's colour scheme
colorscheme badwolf

" Set tab length for existing tabs, use 4 spaces for a tab when editing
set cindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Set line numbers
set number

" Higlight current line
set cursorline

" Menu for file tab completion that let's you cycle through possible matches
set wildmenu

" Redraw only when necessary (I.e. not during macros)
set lazyredraw

" Higlight matching [{()}]
set showmatch

" Draw a line after 80 characters
set colorcolumn=80

" Improve searching incremental and highlight searches
set incsearch
set hlsearch

" Folding
set foldenable
" Open most folds by default
set foldlevelstart=10
" 10 nested folds max
set foldnestmax=10
" syntax based folding
set foldmethod=syntax


" Movement - Move vertically by visual line. (Handles long lines better)
noremap j gj
noremap k gk

" Highlight the last inserted text. Some issues with timing?
noremap gV `[v`]

" Leader shortcuts: Create a custom namespace using the leader key to ensure
" that my vim mappings don't interfere with the predefined ones.

" Set leader to ,
let mapleader=","

" use jk as escape instead of <esc>
inoremap jk <esc>

" Bind UndotreeToggle to <leader>u
nnoremap <leader>u :UndotreeToggle<cr>
"
" Bind NERDTree to <leader>nt
nnoremap <leader>nt :NERDTree<cr>

" save session
nnoremap <leader>s :mksession<cr>

" Avoid having to reload .vimrc each time
autocmd BufWritePost .vimrc source %
