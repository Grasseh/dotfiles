"##########################################################################
"    .
"   /|\
"  / |/\
" | \|'.|
" \.'|/ /
"  \'|'/
"   `|´
"    |
" This file was written by Steve 'Grasseh' Gagné and can be reused for free.
" It contains personal vim configurations
"###########################################################################
"Display"
set background=dark
set ruler     "Display current selected"
set showmatch "Matching Brackets"
syntax enable
set number
colors zenburn
let g:airline_theme='wombat'
set hlsearch
set incsearch
set showcmd
set guifont=FiraMono\ Nerd\ Font\ 11
set list listchars=tab:»\ ,trail:█,nbsp:֎
set cc=80 "Ruler"

"Behavior"
set encoding=utf8
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set expandtab
set splitbelow
set splitright
let NERDTreeShowHidden = 1
set laststatus=2
set splitbelow
set splitright
set backspace=indent,eol,start
set switchbuf+=usetab,newtab
syntax on

"Relative Numbers"
set relativenumber
let NERDTreeShowLineNumbers=1 "Display relatives in nerdtree too"
autocmd FileType nerdtree setlocal relativenumber "nerdtree still"
autocmd BufEnter * set rnu

"Remaps"
xnoremap p pgvy
map <C-n> :NERDTreeToggle<CR>
nnoremap <UP> <C-W><C-K> " Map arrow keys to move around splits
nnoremap <DOWN> <C-W><C-J>
nnoremap <RIGHT> <C-W><C-L>
nnoremap <LEFT> <C-W><C-H>
map <C-p> :Files<CR>
:command W w
:command Q q
:command Wq wq
:command Wqa wqa
:command Qa qa
:let mapleader = " "

"Leader commands"
"Yank to tmp"
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>w :wviminfo! /tmp/viminfo<CR>
"Read from tmp"
nmap <leader>pa :r! cat /tmp/vitmp<CR>
nmap <leader>re :rviminfo! /tmp/viminfo<CR>
"Set paste mode for indents"
nmap <leader>sp :set paste<CR>
nmap <leader>snp :set nopaste<CR>
"Clean whitespaces"
nmap <leader>ws :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"Clean tabs"
nmap <leader><TAB> :retab<CR>
"Run python"
nmap <leader>py :QuickRun python3<Return>
"Run rails tests"
nmap <leader>rt :RunRailsFocusedTest<CR>
"search recursively"
nmap <leader>ag :Ag<CR>

"Pathogen"
execute pathogen#infect()
"Ale"
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_python_pylint_executable ="pylint3"
"Airline"
let g:airline_powerline_fonts = 1
"Vimux"
let g:VimuxHeight = "35"
let g:VimuxOrientation = "h"
"Tmux fix"
set t_ut=
