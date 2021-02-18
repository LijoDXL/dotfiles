call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/syntastic', { 'for': ['python', 'fortran', 'bash', 'sh', 'matlab']}
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-commentary'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

set shell=/bin/zsh
runtime macros/matchit.vim

" syntastic plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_fortran_checkers = ['gfortran']
let g:syntastic_matlab_checkers = ['mlint']
let g:syntastic_sh_checkers = ['sh']
" end

set ttyfast
set lazyredraw

" for built-in fuzzy finding
set path+=**
" Nice tab of matched file
set wildmenu
" code folding
set foldmethod=indent
set foldlevel=99

let $PATH='/usr/local/bin:' . $PATH

" Sessions
let g:session_autoload = 'no'

" Leader Mappings
map <Space> <leader>
map <Leader>w :update<CR>
map <Leader>q :qall<CR>

" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

" Reduce timeout after <ESC> is recieved.
set ttimeout
set ttimeoutlen=20
set notimeout

" highlight vertical column of cursor
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
set cursorline

"key to insert mode with paste using F2 key
map <F2> :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

set backspace=2   " Backspace deletes like most programs in insert mode
set nocompatible  " Use Vim settings, rather then Vi settings
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set hlsearch      " highlight matches
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
let mysyntaxfile="~/.vim/mysyntax.vim"
syntax on

" if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
"   syntax on
" endif
" if filereadable(expand("~/.vimrc.bundles"))
"   source ~/.vimrc.bundles
" endif

filetype plugin indent on

augroup vimrcEx
  autocmd!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell
  " For commenting in ferret
  autocmd FileType ferret setlocal commentstring=!\ %s
" Automatically wrap at 80 characters for Markdown
autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" highlight longer lines
" set colorcolumn=80

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
" let g:airline_solarized_bg='dark'
set t_Co=256

set smartcase
set ignorecase

" Color scheme
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set background=dark " light
" uncomment if gnome-terminal is not using solarized-theme
" let g:solarized_termcolors=256
colorscheme nord


" Numbers
set number
set numberwidth=5
set mouse=a
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" insert time stamp
nnoremap <F5> "=strftime("%d-%b-%Y %T")<CR>P

" align at =
nnoremap <Leader>= :Tab 1=<CR>
vnoremap <Leader>= :Tab 1=<CR>

" align at !
nnoremap <Leader>! :Tab /!<CR>
vnoremap <Leader>! :Tab /!<CR>

" makes switching modes easy
inoremap jj <Esc>

" ENTER insterts newline in normal mode (also shift+ENTER)
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"cd to path of current file
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2

" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_enable_highlighting=0


" cmd n, cmd p for fwd/backward in search
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" add ferret header template
nnoremap ,jnl :-1read $HOME/.vim/.skeleton_ferret_header.jnl<CR>A
