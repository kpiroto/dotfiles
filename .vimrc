" Vundle.vim setup
" https://github.com/VundleVim/Vundle.vim
" Install:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Bundle 'VundleVim/Vundle.vim'

" list of plugins
Plugin 'pearofducks/ansible-vim'
Plugin 'tyrannicaltoucan/vim-deep-space'

call vundle#end()

filetype plugin indent on

" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles

" End of Vundle.vim setup

set backspace=indent,eol,start
set title

syntax on

set t_Co=256
colorscheme deep-space

set ruler
set guioptions-=T
set guioptions-=m
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
  set cursorline
endif

set smartindent

set cmdheight=2
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})
set showcmd

" Line numbers, F2 to enable/disable
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set smarttab
set tabstop=8

" File encoding and format
set encoding=utf-8
set fileformats=unix,dos,mac

au! Bufread,BufNewFile *.yml set ft=ansible
au! Bufread,BufNewFile *.tpl set ft=ansible_template
