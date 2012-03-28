" ----------------------------------------------------------------------------
" General
" ----------------------------------------------------------------------------
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set hidden
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

call pathogen#infect()

" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------
set background=dark
colorscheme molokai
set number                      " Display line number in the gutter
set ruler                       " Show the cursor position
set laststatus=2 
set wildmenu
set wildmode=list:longest,full

" ----------------------------------------------------------------------------
"  Backups
" ----------------------------------------------------------------------------
set nobackup
set nowritebackup
set noswapfile
let mapleader=","

" ----------------------------------------------------------------------------
"  Syntaxes
" ----------------------------------------------------------------------------
" Use the htmljinja syntax for twig files
au BufNewFile,BufRead *.twig set ft=htmljinja

" ----------------------------------------------------------------------------
"  Hooks
" ----------------------------------------------------------------------------
" Automatically create save directory if it does not exist
au BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))
function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction
