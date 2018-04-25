call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'lifepillar/vim-solarized8'
Plug 'octol/vim-cpp-enhanced-highlight'   " Enhanced cpp highlighting for c++ 11 / 14
Plug 'w0rp/ale'

call plug#end()

"disable showmode since using vim-airline; otherwise use 'set showmode'
set noshowmode
" =====================================
" vim-airline status
" configure: https://github.com/vim-airline/vim-airline#user-content-extensible-pipeline
" =====================================
let g:airline_theme='dark'
let g:airline_powerline_fonts=1
" show buffers (if only one tab)
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#ale#enabled = 1

" -------------------------------------- "
" -------------- SOLIRIZED8------------- "
" -------------------------------------- "
set background=dark
colorscheme solarized8

" -------------------------------------- "
" --------- CPP HIGHLIGHTING ----------- "
" -------------------------------------- "
" let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
"

" ale cpp guidlines
let g:ale_cpp_clangtidy_checks=['-*,cppcoreguidelines-*']
let g:ale_cpp_gcc_executable = 'g++'

" change the leader key from "\" to "," ("," is also popular)
let mapleader=","

" set number                  " show line numbers
set relativenumber
set colorcolumn=80          " keep lines 100 characters at most
set cursorline              " highlight current line
set smartindent             " use entelligent identation for C-like languages
set autoread                " Set to auto read when a file is changed from the outside

" use ,, for escape
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap <leader><leader> <Esc>

" nerdtree
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

" toggle tagbar
nnoremap <silent> <leader>tb :TagbarToggle<CR>

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" split easely windows
set splitright
set splitbelow
nmap <silent> <A-k> <C-w>s<C-k>
nmap <silent> <A-j> <C-w>s<C-j>
nmap <silent> <A-h> <C-w>v<C-h>
nmap <silent> <A-l> <C-w>v<C-l>
nmap <silent> <A-c> <C-w>c

" create easely new tab
nmap <silent> <leader>tb :tabe<CR>

" Shortcut to edit THIS configuration file: (e)dit (c)onfiguration
nnoremap <silent> <leader>ec :e $NVIMRC<CR>
" Shortcut to source (reload) THIS configuration file after editing it: (s)ource (c)onfiguraiton
nnoremap <silent> <leader>sc :source $NVIMRC<CR>

" clear search pattern: ,csp - clear automatically when opening nvim
nmap <silent> <leader>csp :let @/=""<CR>
autocmd VimEnter * :let @/=""

" closing current window without saving, will not work if file is edited but
" not safed ,q
nmap <silent> <leader>q :q<CR>

" Start terminal in insert mode
nnoremap <silent> <leader>t :terminal<CR>:startinsert<CR>
nnoremap <silent> <leader>tt :tabe<CR>:terminal<CR>:startinsert<CR>
nnoremap <silent> <leader>tv :vnew<CR>:terminal<CR>:startinsert<CR>
nnoremap <silent> <leader>th :new<CR>:terminal<CR>:startinsert<CR>
tnoremap <C-x> <C-\><C-n><C-w>q
tnoremap <C-q> <C-\><C-n>

" disable arrow keys - BAD HABIT!!!!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
