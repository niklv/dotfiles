"""""""""""""""
" Vundle setup
"""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()            



" disable arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" use osx clipboard
set clipboard=unnamed

" faster redrawing
set ttyfast

" mouse
if has('mouse')
	set mouse=a
	set ttymouse=xterm2
endif

" numbers
set relativenumber
set number

set autoindent
syntax on


