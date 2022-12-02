"***************************************************************************************************
"" === My nvim cheat sheet ===
"***************************************************************************************************
" ,sr => search-and-replace
"
" vim-sandwich:
" - zaiw( makes foo to (foo).
" - za( makes foo lala to (foo lala).
"
" Clipboard Copy Paste Cut
" YY
" <leader>p
" XX
"
" visual-multi:
"


"***************************************************************************************************
"" === Vim-PLug core ===
"***************************************************************************************************
if has('vim_starting') " only on startup and not when already running
  set nocompatible " disable vi compatibility (emulation of old bugs)
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "c,python"
"let g:vim_bootstrap_editor = "neovim"
"let g:vim_bootstrap_theme = "molokai"
"let g:vim_bootstrap_frams = ""

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

"***************************************************************************************************
"" === Plug install packages ===
"***************************************************************************************************
call plug#begin(expand('~/.config/nvim/plugged')) " required

"
"" Navigation
"
" Tree explorer
Plug 'scrooloose/nerdtree'
" A plugin of NERDTree showing git status flags.
Plug 'Xuyuanp/nerdtree-git-plugin'
" Vim integration for command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Fuzzy file buffer, mru, tag, etc finder
"Plug 'kien/ctrlp.vim'
" Display tags in a window ordered by scope
Plug 'majutsushi/tagbar'

"
"" Visual
"
" Highlight indent
Plug 'Yggdroot/indentLine'
" Colorscheme
Plug 'lifepillar/vim-solarized8'
" Plug 'tomasr/molokai'
" Vim status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"
"" Improved editing
"
" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'
" Multiple cursors lik in sublime test editor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" quoting/parenthesizing made simple
"Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'
" enable repeating supported plugin maps with .
Plug 'tpope/vim-repeat'
" Commenter plugin
Plug 'tomtom/tcomment_vim'
"Plug 'tpope/vim-commentary'
" Fix trailing whitespace
Plug 'bronson/vim-trailing-whitespace'
" Visualize the vim undo tree
Plug 'mbbill/undotree'

"
"" GIT
"
" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
" Show added, modified and removed lines in sign column
Plug 'mhinz/vim-signify'

"
"" C++ / Python
"
" opening man pages inside another Vim window.
"Plug 'ludwig/split-manpage.vim'
" Enhanced C and C++ syntax highlighting
Plug 'bfrg/vim-cpp-modern'
" Clang-formatting in vim
"Plug 'rhysd/vim-clang-format'
" Simplify Doxygen documentationin C, C++, Python
Plug 'vim-scripts/DoxygenToolkit.vim'
" Asynchronous Lint Engine
Plug 'dense-analysis/ale'
" Python PEP8 coding guidelines
"Plug 'tell-k/vim-autopep8'
" The Requirements File Format syntax support for Vim
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}
" python docstring
Plug 'heavenshell/vim-pydocstring'
" VimL completion for coc.nvim
Plug 'Shougo/neco-vim'
" Vim completion source for coc.nvim using neco-vim
Plug 'neoclide/coc-neco'
" Include completion source for coc.nvim using neoinclude.vim
Plug 'Shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
" coc.nvim
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}

"
"" Snippets used by coc.nvim
"
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

"
"" Jenkins job dsl
"
" Jenkins job dsl groovy script
Plug 'modille/groovy.vim'

"
"" Rst
"
" Take notes in rst
Plug 'Rykka/riv.vim'
" Instant rst preview in browser
Plug 'gu-fan/InstantRst'
"Plug 'vim-voom/voom'

"
"" Plantuml
"
" vim syntax file for plantuml
Plug 'aklt/plantuml-syntax'
" Dependency of plantuml-previewer
Plug 'tyru/open-browser.vim'
" vim/neovim plugin for plantuml
Plug 'weirongxu/plantuml-previewer.vim'

"
"" Markdown
"
" Syntax highlighting, matching rules and mappings for the original Markdown
" and extensions.
Plug 'plasticboy/vim-markdown'
" Dependency for vim-markdown
Plug 'godlygeek/tabular'
" Instant Markdown previews from VIm!
Plug 'suan/vim-instant-markdown'


"
"" General writing
"
" Rethinking Vim as a tool for writers
Plug 'reedes/vim-pencil'

"
"" Spell/Grammar checking
"
" Disctraction-free writing in Vim
"Plug 'junegunn/goyo.vim'
" Powerful grammar checker using LanguageTool
Plug 'rhysd/vim-grammarous'
" Uncover usage problems in your writing
Plug 'reedes/vim-wordy'
" Leightweight auto-correction in Vim
Plug 'reedes/vim-litecorrect'
" Correct common typos and misspellings as you type in Vim
Plug 'panozzaj/vim-autocorrect'

"
"" Devcontainer
"
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'esensar/nvim-dev-container'


"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/local_bundles.vim"))
  source ~/.config/nvim/local_bundles.vim
endif

call plug#end()
"*******************************************************************************
"*******************************************************************************


"*******************************************************************************
" Basic setup
"*******************************************************************************

" Required: turn on filetype detection, load plugin and indent vim file
filetype plugin indent on

" LEADER
let mapleader=","
let g:mapleader = ","

"" Search down into subfolders provides tab-completion for all file related tasks
"set path+=**
"" Encoding
"set encoding=utf-8
"set fileencoding=utf-8
"set fileencodings=utf-8
"set bomb
"set binary
"" Automatically update file when changed outside of vim
set autoread
"" Tabs. May be overriten by autocmd rules
set tabstop=2               " number of visual spaces per TAB
set softtabstop=2           " number of spaces in tab when editing
set shiftwidth=2            " nuber of spaces for each step of (auto)indentAL OPTIONS
set expandtab
set smarttab
"autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
"autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
"autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
"if &filetype ==# 'groovy'
"	setlocal expandtab               " convert tab to spaces
"else
"	setlocal noexpandtab               " convert tab to spaces
"endif
"" Round indent to multiple of 'shiftwidth' when indenting with > and <
set shiftround
"" Do smart autoindenting when starting a new line for C-like languages
set smartindent
"" Searching
set hlsearch                " highlight matches
"let python_highlight_all = 1
set incsearch
set ignorecase
set smartcase
"" Enable hidden buffers
set hidden


"" swp files
set swapfile
"" protect against crash-during-write
set writebackup
"" but do not persist backup after successful write
set nobackup
"" use rename-and-write-new method whenever safe
set backupcopy=auto
"" persist the undo tree for each file
set undofile

"set fileformats=unix,dos,mac
" Show current command at the bottom line of the screen
"set showcmd
" Highlight matching bracket [{()}] when cursor is on one of them
set showmatch

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif
"" Ignore compiled and generated files
set wildignore+=*.o,*~,*.pyc,*/\.git/*,*.d,*_arm,__pycache__
set wildignore+=*.so,*.swp,*.zip,*.db,*.sqlite,*/\.ccls-cache/*
"set wildignore+=*/tmp/*,*_amd64,_doc*
"" .ccls-cache,.ccls-cache/*
set wildmode=list:longest,list:full
" Copy/Paste/Cut to clipboard
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" disable adding comment on new line under comment line
"set formatoptions-=o


"*****************************************************************************
"" Visual Settings
"*****************************************************************************

syntax on
set ruler
"set number                  " show line numbers
set relativenumber					" instead of numer to jump easily number up or down
set colorcolumn=100          " keep lines 100 characters at most
set cursorline              " highlight current line


"*****************************************************************************
"" Mappings
"*****************************************************************************

" === Better window navigation === "
set splitright
set splitbelow
nmap <silent> <A-k> <C-w>s<C-k>
nmap <silent> <A-j> <C-w>s<C-j>
nmap <silent> <A-h> <C-w>v<C-h>
nmap <silent> <A-l> <C-w>v<C-l>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" === Better tabs navigation === "
" === create easely new tab: ,tb === "
nmap <silent> <leader>tb :tabe<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" === disable arrow keys - BAD HABIT!!!! === "
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Clipboard Copy Paste Cut
noremap YY "+y
noremap <leader>p "+gP
noremap XX "+x

" === config file shortcuts === "
" Shortcut to edit THIS configuration file: (e)dit (c)onfiguration
nnoremap <silent> <leader>ec :e $NVIMRC<CR>
" Shortcut to source (reload) THIS configuration file after editing it: (s)ource (c)onfiguraiton
nnoremap <silent> <leader>sc :source $NVIMRC<CR>

" === use ,, for escape === "
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap <leader><leader> <Esc>
"inoremap jk <esc>

" === search === "
" clear search pattern highlight
nmap <silent> <leader><space> :let @/=""<CR>
" clear automatically when opening nvim
autocmd VimEnter * :let @/=""
"" This is a quick way to call search-and-replace on a current word
nnoremap <leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>

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

" Format json
map <leader>js :%!python -m json.tool<cr>

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e


"*******************************************************************************
" Plugin settings
"*******************************************************************************

"
"" Colorscheme
"
" === Toggle light and dark scheme === "
set background=dark
colorscheme solarized8
let g:togglebg="dark"
let g:indentLine_setColors = 0

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
nnoremap <leader>tcs :call ToggleLightDark()<CR>


"
"" modern cpp highlight
"
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1
" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1
" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

"
"" ALE
"
"let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_fixers = {}
let g:ale_fix_on_save = 1
let g:ale_linters = {}

" === c/cpp === "
let g:ale_cpp_gcc_executable = 'g++'
" Set search paths for the compilation database (compile_commands.json)
let g:ale_c_build_dir_names = ['build', 'bin', '_build', '_build-x86_64', '_build-cortex-a8', '_build_compile_commands']
let g:ale_cpp_build_dir_names = ['build', 'bin', '_build', '_build-x86_64', '_build-cortex-a8', '_build_compile_commands']
" Set enabled linters and fixers
let g:ale_fixers['cpp'] = ['clang-format']
let g:ale_linters['cpp'] = ['clangtidy', 'cppcheck', 'clangcheck', 'flawfinder']
let g:ale_fixers['c'] = ['clang-format']
let g:ale_linters['c'] = ['clangtidy', 'cppcheck', 'clangcheck', 'flawfinder']
" Setup clang tidy
let g:ale_cpp_clangtidy_executable = 'clang-tidy'
let g:ale_cpp_clangtidy_checks = [
\      '*',
\      '-llvm*',
\      '-google*',
\      '-readability-braces-around-statements',
\      '-fuchsia-default-arguments',
\      '-hicpp-braces-around-statements'
\      ]
" Setup clang-check
let g:ale_cpp_clangcheck_executable = 'clang-check-10'
" Setup cpp-check
let g:ale_cpp_cppcheck_executable = 'cppcheck'
let g:ale_cpp_cppcheck_options = '--enable=all --project=compile_commands.json'
" Setup clang-format
let g:ale_cpp_clangformat_executable = 'clang-format'
let g:ale_c_clangformat_executable = 'clang-format'

" === Cmake === "
let g:ale_cmake_cmakeformat_executable = 'cmake-format'
let g:ale_fixers['cmake'] = ['cmakeformat']
let g:ale_cmake_cmakelint_executable = 'cmakelint'
let g:ale_linters['cmake'] = ['cmakelint']
let g:ale_cmake_cmakelint_options = '--linelength=100'

" === Python === "
"autocmd FileType python Autopep8
" Set enabled linters and fixers
let g:ale_fixers['python'] = ['autopep8']
let g:ale_linters['python'] = ['pycodestyle', 'pylint', 'pydocstyle']
" Setup pylint
let g:ale_python_pylint_use_global = 1
let g:ale_python_pylint_change_directory = 0
let g:ale_python_pylint_executable = '/home/knest/.local/bin/pylint'
" Setup pycodestyle
let g:ale_python_pycodestyle_use_global = 1
let g:ale_python_pycodestyle_executable = '/home/knest/.local/bin/pycodestyle'
" Setup autopep8
let g:autopep8_disable_show_diff=1
let g:ale_python_autopep8_use_global = 1

" === JSON === "
let g:ale_fixers['json'] = ['fixjson']
let g:ale_json_jsonlint_executable = 'jsonlint-php'
let g:ale_linters['json'] = ['jsonlint']

" === bash/shell === "
let g:ale_linters['sh'] = ['shellcheck']

" === docker === "
let g:ale_linters['dockerfile'] = ['dockerfile_lint']

"
" === markdown === "
"let g:ale_fixers['markdown'] = ['prettier']
"let g:ale_linters['markdown'] = ['remark-lint', 'markdownlint']

" === javascript === "
"let g:ale_javascript_prettier_options = "--print-width 80 --prose-wrap always --parser markdown"

nmap <leader>an :ALENext<cr>
nmap <leader>ap :ALEPrevious<cr>
nmap <leader>af :ALEFix<cr>
nmap <leader>afw :ALEFix remove_trailing_lines<cr>:ALEFix trim_whitespace<cr>

"
"" vim-sandwich
"

"remap default keybinding starting with s to z because using default vim s'key
"is slowing down
let g:sandwich_no_default_key_mappings = 1
silent! nmap <unique><silent> zd <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> zr <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-query-a)
silent! nmap <unique><silent> zdb <Plug>(operator-sandwich-delete)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)
silent! nmap <unique><silent> zrb <Plug>(operator-sandwich-replace)<Plug>(operator-sandwich-release-count)<Plug>(textobj-sandwich-auto-a)

let g:operator_sandwich_no_default_key_mappings = 1
" add
silent! map <unique> za <Plug>(operator-sandwich-add)
" delete
silent! xmap <unique> zd <Plug>(operator-sandwich-delete)
" replace
silent! xmap <unique> zr <Plug>(operator-sandwich-replace)

"
"" vim-airline
"
set noshowmode
let g:airline_theme='dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#virtualenv#enabled = 1
"let g:airline_skip_empty_sections = 1

"
"" Nerdtree
"
" map to ,nt "
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
" close nerdtree when opening file "
let NERDTreeQuitOnOpen=1
let g:NERDTreeIgnore=['\.pyc$','__pycache__']
let g:NERDTreeShowBookmarks=1
"let g:NERDTreeWinSize = 50

"
"" Tagbar
"
let g:tagbar_sort = 0
nnoremap <silent> <leader>tg :TagbarToggle<CR>

"
"" Pydocstring
"
let g:pydocstring_enable_mapping = 0
"let g:pydocstring_templates_dir = '/home/knest/.vim/vim-pydocstring/template/pydocstring'

"
"" rst
"
" === riv === "
"" riv title format - TODO better mapping
let g:riv_disable_folding = 1
let g:riv_section_levels = '*=-^"~'
nnoremap <silent> <leader>rivt0 :RivTitle0<CR>
nnoremap <silent> <leader>rivt1 :RivTitle1<CR>
nnoremap <silent> <leader>rivt2 :RivTitle2<CR>
nnoremap <silent> <leader>rivt3 :RivTitle3<CR>
nnoremap <silent> <leader>rivt4 :RivTitle4<CR>
nnoremap <silent> <leader>rivt5 :RivTitle5<CR>
nnoremap <silent> <leader>rivt6 :RivTitle6<CR>
" === InstantRst === "
let g:instant_rst_browser = 'firefox'
let g:instant_rst_port = 5676
nmap <leader>rst :InstantRst<cr>

"
"" markdown
"
" Disable folding configuration
let g:vim_markdown_folding_disabled = 1
" Disable conceal reagardless of vim conceallevel
let g:vim_markdown_conceal = 0
" Disable Default Key Mappings
let g:vim_markdown_no_default_key_mappings = 1
" Let TOC autofit
let g:vim_markdown_toc_autofit = 1
" Set markdown indent to 2 spaces
let g:vim_markdown_new_list_item_indent = 2
" === vim-instant-markdown previewer === "
" don't automatically start when opening a markdown file
let g:instant_markdown_autostart = 0
nmap <leader>md :InstantMarkdownPreview<cr>


"
"" Undo tree
"
"nnoremap <F5> :UndotreeToggle<CR>
if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

"
"" vim-signify
"
nmap <leader>gn <plug>(signify-next-hunk)
nmap <leader>gp <plug>(signify-prev-hunk)
"nmap <leader>gN 9999<leader>gj
"nmap <leader>gP 9999<leader>gk

"
"" vim-pencil
"
" augroup pencil
"   autocmd!
"   autocmd FileType markdown,mkd,text,rst call pencil#init({'wrap': 'hard', 'autoformat': 1})
" augroup END
" Disable conceal regardless of vim conceallevel
let g:pencil#conceallevel = 0
" Set textwidh to 100 characters instead of the default 74
let g:pencil#textwidth = 100

"
"" vim-litecorrect
"
augroup litecorrect
  autocmd!
  autocmd FileType markdown,mkd,text,rst call litecorrect#init()
augroup END

"
"" vim-autocorrect
"
augroup autocorrect
  autocmd FileType markdown,mkd,text,rst call litecorrect#init()
augroup END

"
" FZF
"
" fzf.vim
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif
" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Default fzf layout
let g:fzf_layout = { 'down': '~40%' }
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'
" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" Key bindings
"nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>ff :FZF -m<CR>
"nnoremap <silent> <leader>E :History<CR>

"
" devcontainer
"
"require("devcontainer").setup{}

" coc.nvim
"
" TextEdit might fail if hidden is not set.
set hidden
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Use `,cp` and `,cn` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>cl  :<C-u>CocList diagnostics<cr>
nmap <silent> <leader>cp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>cn <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> <leader>cd <Plug>(coc-definition)
nmap <silent> <leader>cy <Plug>(coc-type-definition)
nmap <silent> <leader>ci <Plug>(coc-implementation)
nmap <silent> <leader>crf <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>crn <Plug>(coc-rename)

" Formatting selected code.
"vmap <leader>cf  <Plug>(coc-format-selected)
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

"augroup mygroup
"  autocmd!
"  " Setup formatexpr specified filetype(s).
"  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"  " Update signature help on jump placeholder.
"  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"augroup end
"
"" Applying codeAction to the selected region.
"" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
"" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)
"
"" Run the Code Lens action on the current line.
"nmap <leader>cl  <Plug>(coc-codelens-action)
"
"" Map function and class text objects
"" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)
"
"" Remap <C-f> and <C-b> for scroll float windows/popups.
"if has('nvim-0.4.0') || has('patch-8.2.0750')
"  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"endif
"
"" Use CTRL-S for selections ranges.
"" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
"command! -nargs=0 Format :call CocActionAsync('format')
"
"" Add `:Fold` command to fold current buffer.
"command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
"command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')
"
"" Add (Neo)Vim's native statusline support.
"" NOTE: Please see `:h coc-status` for integrations with external plugins that
"" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings for CoCList
"" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
