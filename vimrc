set nocompatible

set hidden
set history=500
set title " vim in terminal with correct title
set shortmess=atI " shorten prompt messages
set visualbell " disable sound bell

set wildmenu " better tab completion

set autoread " reload files changed outside vim
set showcmd
set showmatch " Show matching brackets when text indicator is over them
set backspace=indent,eol,start
let mapleader = ","

set noshowmode
set noruler
set laststatus=2

" Disable backup and swap, use git instead
set nobackup
set nowb
set noswapfile

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed


set ignorecase " Ignore case when searching
set smartcase " When searching try to be smart about cases 
set hlsearch " Highlight search results
set incsearch " Makes search act like search in modern browsers

set number " line numbers
set numberwidth=4

" Tabs
set autoindent
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4

set wrap "Wrap lines

" Linebreak on 500 characters
set lbr
set tw=500

set ffs=unix,dos,mac " Use Unix as the standard file type
set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language

set pastetoggle=<F2> " Paste mode

" Set MacVim font size
set gfn=Monaco:h13

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load vundle plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" Colorscheme
syntax on
set t_Co=16
set background=dark
colorscheme solarized

" Lightline

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode' ,'paste'],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&readonly?"x":""}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

" Syntastic
let g:syntastic_python_flake8_args = "--ignore=E231,E501,E302,E251"
let g:syntastic_check_on_open = 1

" Pymode
let g:pymode_lint = 0

" let g:SuperTabDefaultCompletionType = "context"

" nnoremap <F5> :GundoToggle<CR>

" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""

" nnoremap <silent> <leader>gs :Gstatus<CR>
" nnoremap <silent> <leader>gd :Gdiff<CR>
" nnoremap <silent> <leader>gc :Gcommit<CR>
" nnoremap <silent> <leader>gb :Gblame<CR>
" nnoremap <silent> <leader>gl :Glog<CR>
" nnoremap <silent> <leader>gp :Git push<CR>
" nnoremap <silent> <leader>gr :Gread<CR>
" nnoremap <silent> <leader>gw :Gwrite<CR>
" nnoremap <silent> <leader>ge :Gedit<CR>
" " Mnemonic _i_nteractive
" nnoremap <silent> <leader>gi :Git add -p %<CR>
" nnoremap <silent> <leader>gg :SignifyToggle<CR>
