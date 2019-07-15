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
set list listchars=tab:»\ ,trail:·,nbsp:֎
"Behavior"
set encoding=utf8
filetype plugin indent on
set shiftwidth=4
set tabstop=4
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
map <C-p> :CtrlP<CR>
:command W w
:command Q q
:command Wq wq
:command Wqa wqa
:command Qa qa
:let mapleader = " "
"Leader commands"
vmap <leader>y :w! /tmp/vitmp<CR>
nmap <leader>w :wviminfo! /tmp/viminfo<CR>
nmap <leader>pa :r! cat /tmp/vitmp<CR>
nmap <leader>r :rviminfo! /tmp/viminfo<CR>
nmap <leader>sp :set paste<CR>
nmap <leader>snp :set nopaste<CR>
nmap <leader>ws :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nmap <leader><TAB> :retab<CR>
nmap <leader>py :QuickRun python3<Return>
"Pathogen"
execute pathogen#infect()
"Ale"
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_list_window_size = 3
let g:ale_python_pylint_executable ="pylint3"
"Ctrl-P"
let g:ctrlp_custom_ignore = 'node_modules\|(.*).swp'
"Airline"
let g:airline_powerline_fonts = 1
"Tmux fix"
set t_ut=
"SilverSearcher-ag"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
