set nocompatible              			" be iMproved, required
filetype off                  			" required by Vundle plugin

" set the runtime path to include Vundle and initialize "
set rtp+=~/.vim/bundle/Vundle.vim

" --------------------- Plugins --------------------------------------------- "
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 			" Plugin Manager
Plugin 'altercation/vim-colors-solarized'   	" vim colorscheme
Plugin 'octol/vim-cpp-enhanced-highlight'	" Enhanced cpp highlighting for c++ 11 / 14
Plugin 'rhysd/vim-clang-format'             	" Clang-formatting in vim
Plugin 'Valloric/YouCompleteMe'             	" Code-completion engine: completer + syntax checker
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'                	" Tree explorer

call vundle#end()            			" required by Vundle plugin
filetype plugin indent on   			" required by Vundle plugin

" -------------------------------------- "
" -------------- SOLIRIZED ------------- "
" -------------------------------------- "
syntax enable
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized

" -------------------------------------- "
" -------------- GENERAL --------------- "
" -------------------------------------- "
set hlsearch                " highlight matches
set showmatch               " highlight matchin [{()}]
set cursorline              " highlight current line

" -------------------------------------- "
" --------------- NERDtee -------------- "
" -------------------------------------- "
map nt :NERDTreeToggle<cr>
