" ========================================
" Vim plugin configuration
" ========================================
"
" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-git'

" Languages
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic.git'
Plugin 'pangloss/vim-javascript'
Plugin 'klen/python-mode'

" Vim
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on
