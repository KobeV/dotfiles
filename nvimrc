" ------------------------------------------------------------------ "
" ------------------------- PLUGIN LOADING ------------------------- "
" ------------------------------------------------------------------ "
set nocompatible	" disable vi compatibility (emulation of old bugs)

call plug#begin('~/.vim/plugged')


" === vim colorscheme === "
Plug 'lifepillar/vim-solarized8'
" === Vim status bar === "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" === Highlight indent === "
Plug 'Yggdroot/indentLine'

" === Tree explorer === "
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" === Fuzzy file buffer, mru, tag, etc finder === "
Plug 'kien/ctrlp.vim' 
Plug 'majutsushi/tagbar'

" === Git wrapper === "
Plug 'tpope/vim-fugitive'

" === Snippets === "
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" === Code completion === "
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'ervandew/supertab'

" === Asynchronous Lint Engine === "
Plug 'w0rp/ale'

" === C++ === "
" Enhanced cpp highlighting for c++ 11 / 14
Plug 'octol/vim-cpp-enhanced-highlight'

" === Python === "
" Python PEP8 coding guidelines
Plug 'tell-k/vim-autopep8'

" === Formatters === "
" Clang-formatting in vim
Plug 'rhysd/vim-clang-format' 
" Jenkins job dsl groovy script
Plug 'modille/groovy.vim'

" === Documentation === "
Plug 'vim-scripts/DoxygenToolkit.vim' " Simplify Doxygen documentationin C, C++, Python
" python docstring
Plug 'heavenshell/vim-pydocstring'
" rst documentation
Plug 'Rykka/riv.vim'

" Plantuml
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'

" === Pre-Viewers === "
"Plug 'suan/vim-instant-markdown'

" TODO
" Plug 'tpope/vim-obsession'
" Plug 'editorconfig/editorconfig-vim'
" Plug 'godlygeek/tabular'
" Plug 'benmills/vimux'
" Plug 'christoomey/vim-tmux-navigator' " Navigate seamlessly between vin and tmux splits
" Plug 'junegunn/fzf.vim'
" syntastic??
" sphinx docs


call plug#end()
" ------------------------------------------------------------------ "


" ------------------------------------------------------------------ "
" ----------------------------- LEADER ----------------------------- "
" ------------------------------------------------------------------ "
let mapleader=","
let g:mapleader = ","
" ------------------------------------------------------------------ "

" ------------------------------------------------------------------ "
" ---------------------------- PLUGIN'S ---------------------------- "
" ------------------------------------------------------------------ "

" === Vim solorized8 colorscheme === "
set background=dark
colorscheme solarized8
let g:togglebg="dark"
let g:indentLine_setColors = 0

" === Vim-airline === "
set noshowmode
let g:airline_theme='dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#ale#enabled = 1

" === NerdTree: ,nt === "
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
" === ctrlp === "
let g:ctrlp_working_path_mode='a'
nmap <leader>p :CtrlPBuffer<cr>
" === toggle tagbar: ,tg === "
let g:tagbar_sort = 0
nnoremap <silent> <leader>tg :TagbarToggle<CR>

" TODO: vim-fugitive keybindings


" === YouCompleteMe === "
"make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_server_python_interpreter='/usr/bin/python3'
"Youcompleteme fix
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_compilation_database_folder = '_build/'
"let g:ycm_extra_conf_vim_data = [ 'g:ycm_compilation_database_folder' ]

" === SuperTab === "
let g:SuperTabDefaultCompletionType = '<C-n>'

" === UltiSnips === "
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" === Clang format === "
"autocmd FileType cpp ClangFormatAutoEnable

" === ale settings === "
let g:ale_lint_on_enter = 1
let g:ale_fixers = {}
let g:ale_fix_on_save = 1
let g:ale_linters = {}
" cpp "
let g:ale_c_build_dir_names = ['build', 'bin', '_build', '_build_amd64', '_build_arm']
let g:ale_cpp_build_dir_names = ['build', 'bin', '_build', '_build_amd64', '_build_arm']
let g:ale_fixers['cpp'] = ['clang-format']
let g:ale_linters['cpp'] = ['clangtidy', 'cppcheck', 'clangcheck']
let g:ale_fixers['c'] = ['clang-format']
let g:ale_linters['c'] = ['clangtidy', 'cppcheck', 'clangcheck']
"let g:ale_cpp_clangtidy_checks=['-*,cppcoreguidelines-*']
let g:ale_cpp_gcc_executable = 'g++'
"let g:ale_cpp_clangtidy_executable = 'clang-tidy-8.0'
let g:ale_cpp_clangtidy_executable = 'clang-tidy'
let g:ale_cpp_clangtidy_checks = [
\      '*',
\      '-llvm*',
\      '-google*',
\      '-readability-braces-around-statements'
\      ]
"let g:ale_cpp_clangcheck_executable = 'clang-check-8.0'
let g:ale_cpp_clangcheck_executable = 'clang-check'
let g:ale_cpp_cppcheck_executable = 'cppcheck'
let g:ale_cpp_cppcheck_options = '--enable=all --project=_build/compile_commands.json'
let g:ale_cpp_clangformat_executable = 'clang-format'
let g:ale_c_clangformat_executable = 'clang-format'

" Python PEP8 "
autocmd FileType python Autopep8
let g:ale_python_pylint_use_global = 1
let g:ale_python_pycodestyle_use_global = 1
let g:ale_python_autopep8_use_global = 1
let g:autopep8_disable_show_diff=1
let g:ale_python_pylint_change_directory = 0
let g:ale_fixers['python'] = ['autopep8']
let g:ale_python_pylint_executable = '/home/knest/.local/bin/pylint'
let g:ale_python_pycodestyle_executable = '/home/knest/.local/bin/pycodestyle'
let g:ale_linters['python'] = ['pycodestyle', 'pylint']
" JSON "
"let g:ale_fixers['json'] = ['fixjson']
"let g:ale_linters['json'] = ['jsonlint']
" markdown "
"let g:ale_fixers['markdown'] = ['prettier']
let g:ale_linters['markdown'] = ['remark-lint', 'markdownlint']
"let g:ale_javascript_prettier_options = "--print-width 80 --prose-wrap always --parser markdown"

" === Pydocstring === "
let g:pydocstring_enable_mapping = 0
"let g:pydocstring_templates_dir = '/home/knest/.vim/vim-pydocstring/template/pydocstring'

" === riv doc === "
let g:riv_disable_folding = 1
let g:riv_section_levels = '*=-^"~'
nnoremap <silent> <leader>rivt0 :RivTitle0<CR>
nnoremap <silent> <leader>rivt1 :RivTitle1<CR>
nnoremap <silent> <leader>rivt2 :RivTitle2<CR>
nnoremap <silent> <leader>rivt3 :RivTitle3<CR>
nnoremap <silent> <leader>rivt4 :RivTitle4<CR>
nnoremap <silent> <leader>rivt5 :RivTitle5<CR>
nnoremap <silent> <leader>rivt6 :RivTitle6<CR>

" === Cmake === "
let g:ale_cmake_cmakelint_options = '--linelength=100'

" === markdown previewer === "
"let g:instant_markdown_autostart = 0

" ------------------------------------------------------------------ "


" ------------------------------------------------------------------ "
" ------------------------ GENERAL OPTIONS ------------------------- "
" ------------------------------------------------------------------ "

"set number                  " show line numbers
set relativenumber
set colorcolumn=100          " keep lines 100 characters at most
set cursorline              " highlight current line
set smartindent             " use entelligent identation for C-like languages
set autoread                " Set to auto read when a file is changed from the outside
set hlsearch                " highlight matches
set showmatch               " highlight matchin [{()}]
set tabstop=2               " number of visual spaces per TAB
set softtabstop=2           " number of spaces in tab when editing
set shiftwidth=2            " nuber of spaces for each step of (auto)indentAL OPTIONS

if &filetype ==# 'groovy'
	setlocal expandtab               " convert tab to spaces
else
	setlocal noexpandtab               " convert tab to spaces
endif


" === Better window navigation === "
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" === split easely windows === "
set splitright
set splitbelow
nmap <silent> <A-k> <C-w>s<C-k>
nmap <silent> <A-j> <C-w>s<C-j>
nmap <silent> <A-h> <C-w>v<C-h>
nmap <silent> <A-l> <C-w>v<C-l>

" === disable arrow keys - BAD HABIT!!!! === "
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" === config file shortcuts === "
" Shortcut to edit THIS configuration file: (e)dit (c)onfiguration
nnoremap <silent> <leader>ec :e $NVIMRC<CR>
" Shortcut to source (reload) THIS configuration file after editing it: (s)ource (c)onfiguraiton
nnoremap <silent> <leader>sc :source $NVIMRC<CR>

" === use ,, for escape === "
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap <leader><leader> <Esc>

"=== create easely new tab: ,tb === "
nmap <silent> <leader>tb :tabe<CR>

" === search === "
" (c)lear (s)earch (p)attern: ,csp
nmap <silent> <leader>csp :let @/=""<CR>
" clear automatically when opening nvim
autocmd VimEnter * :let @/=""

" === closing current window: ,q === "
nmap <silent> <leader>q :q<CR>

" === Terminal mode === "
" Start terminal in insert mode: ,t
nnoremap <silent> <leader>t :terminal<CR>:startinsert<CR> 
" Open new tab with terminal: ,tt
nnoremap <silent> <leader>tt :tabe<CR>:terminal<CR>:startinsert<CR>
" Vertical split in terminal mode: ,tv
nnoremap <silent> <leader>tv :vnew<CR>:terminal<CR>:startinsert<CR>
" Horizontal split in terminal mode: ,th
nnoremap <silent> <leader>th :new<CR>:terminal<CR>:startinsert<CR>
" Ctrl-X to exit terminal mode and close window
tnoremap <C-x> <C-\><C-n><C-w>q
" Ctrl-Q to exit terminal mode
tnoremap <C-q> <C-\><C-n>

" === Colorschemes === "
function! Light()
    echom "bg to light"
    let g:togglebg="light"
		set background=light
		colorscheme solarized8
endfunction

function! Dark()
    echom "bg to dark"
    let g:togglebg="dark"
		set background=dark
		colorscheme solarized8
endfunction

function! ToggleLightDark()
  if g:togglebg == "light"
    call Dark()
  else
    call Light()
  endif
endfunction

" toggle colors to optimize based on light or dark background
nnoremap <leader>c :call ToggleLightDark()<CR>

" ------------------------------------------------------------------ "
