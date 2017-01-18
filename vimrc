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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'

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
set tabstop=2               " number of visual spaces per TAB
set softtabstop=2           " number of spaces in tab when editing

" -------------------------------------- "
" --------------- NERDtee -------------- "
" -------------------------------------- "
map nt :NERDTreeToggle<cr>

" -------------------------------------- "
" ------------- UltiSnips -------------- "
" -------------------------------------- "
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" -------------------------------------- "
" ----------- YouCompleteMe ------------ "
" -------------------------------------- "
nmap <leader>ycmc :YcmCompleter<cr>
nmap <leader>ycmd :YcmDiags<cr>
let g:ycm_complete_in_comments = 0
" make YCM work together with syntastic: turn of the YCM diagnostic display
" features because it removes all other Syntastic checkers when set.
" let g:ycm_show_diagnostics_ui = 0
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" -------------------------------------- "
" -------------- SuperTab -------------- "
" -------------------------------------- "
let g:SuperTabDefaultCompletionType = '<C-n>'
