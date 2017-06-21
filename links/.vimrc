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
"Behavior"
set encoding=utf_8
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto-indent"
set si "Smart-indent"
set splitbelow
set splitright
let NERDTreeShowHidden = 1
set laststatus=2
set splitbelow
set splitright
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
:let mapleader = " "
"Leader commands"
vmap <leader>y :w! /tmp/vitmp<CR>                                                                   
nmap <leader>p :r! cat /tmp/vitmp<CR>
nmap <leader>sp :set paste<CR>
nmap <leader>snp :set nopaste<CR>
"Pathogen"
execute pathogen#infect()
syntax on
filetype plugin indent on
"Syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
