" -------------------------------------- "
" ----------- PLUGIN LOADING ----------- "
" -------------------------------------- "
set nocompatible                            " disable vi compatibility (emulation of old bugs)
filetype off                                " required by Vundle plugin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'                  " Let Vundle manage Vundle
Plugin 'altercation/vim-colors-solarized'   " vim colorscheme
Plugin 'scrooloose/nerdtree'                " Tree explorer
Plugin 'christoomey/vim-tmux-navigator'     " Navigate seamlessly between vin and tmux splits
Plugin 'rhysd/vim-clang-format'             " Clang-formatting in vim
Plugin 'octol/vim-cpp-enhanced-highlight'   " Enhanced cpp highlighting for c++ 11 / 14
Plugin 'renyard/vim-rangerexplorer'         " Vim Ranger Explorer
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'             " Code-completion engine: completer + syntax checker
Plugin 'rdnetto/YCM-Generator'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/DoxygenToolkit.vim'     " Simplify Doxygen documentationin C, C++, Python
Plugin 'kien/ctrlp.vim'                     " Fuzzy file buffer, mru, tag, etc finder
Plugin 'majutsushi/tagbar'
Plugin 'tell-k/vim-autopep8'                " Python PEP8 coding guidelines

call vundle#end()                           " required by Vundle
filetype plugin indent on                   " required by Vundle

" -------------------------------------- "
" --------------- LEADER --------------- "
" -------------------------------------- "
"let mapleader = ","                         " , is leader key, used as <leader> in key bindings
"let g:mapleader = ","                       " g: global variable see :help internal-variables

" -------------------------------------- "
" -------------- SOLIRIZED ------------- "
" -------------------------------------- "
syntax enable
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized

" -------------------------------------- "
" --------------- NERDtree ------------- "
" -------------------------------------- "
nmap nt :NERDTreeToggle<cr>

" -------------------------------------- "
" ----------- Ranger-explorer ---------- "
" -------------------------------------- "
nmap re :RangerExplorer<cr>

" -------------------------------------- "
" ----------- YouCompleteMe ------------ "
" -------------------------------------- "
"nmap <leader>ycmc :YcmCompleter<cr>
"nmap <leader>ycmd :YcmDiags<cr>
"let g:ycm_complete_in_comments = 0
" make YCM work together with syntastic: turn of the YCM diagnostic display
" features because it removes all other Syntastic checkers when set.
" let g:ycm_show_diagnostics_ui = 0
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_server_python_interpreter='python2'
" -------------------------------------- "
" -------------- SuperTab -------------- "
" -------------------------------------- "
let g:SuperTabDefaultCompletionType = '<C-n>'
" -------------------------------------- "
" ------------- UltiSnips -------------- "
" -------------------------------------- "
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" -------------------------------------- "
" -------------- ctrlp ----------------- "
" -------------------------------------- "
let g:ctrlp_working_path_mode='a'
nmap <leader>p :CtrlPBuffer<cr>

" -------------------------------------- "
" ------------- Clang format ----------- "
" -------------------------------------- "
autocmd FileType cpp ClangFormatAutoEnable

" -------------------------------------- "
" ------------- Python PEP8 format ----- "
" -------------------------------------- "
"autocmd FileType python Autopep8
let g:autopep8_disable_show_diff=1
autocmd BufWritePost *.py Autopep8

" -------------------------------------- "
" -------------- Tagbar ---------------- "
" -------------------------------------- "
let g:tagbar_sort = 0
nmap tg :TagbarToggle<cr>


" -------------------------------------- "
" ----------- GENERAL OPTIONS ---------- "
" -------------------------------------- "
set tabstop=2               " number of visual spaces per TAB
set softtabstop=2           " number of spaces in tab when editing
set shiftwidth=2            " nuber of spaces for each step of (auto)indentAL OPTIONS
set expandtab               " convert tab to spaces

set hlsearch                " highlight matches
set showmatch               " highlight matchin [{()}]

" set number                  " show line numbers
set relativenumber
set colorcolumn=80          " keep lines 100 characters at most
set cursorline              " highlight current line
set mouse=r                 " enable use of the mouse. Only works for certain terminals
set smartindent             " use entelligent identation for C-like languages
set autoread                " Set to auto read when a file is changed from the outside

" disable arrow keys - BAD HABIT!!!!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" -------------------------------------- "
" ----------- Other Bindings ----------- "
" -------------------------------------- "

" --- Smarter moving between split windows
"map <C-w>o <C-q>

set splitright
set splitbelow
