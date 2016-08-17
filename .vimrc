"Display"
set background=dark
set ruler     "Display current selected" 
set showmatch "Matching Brackets"
syntax enable
set number
colors zenburn
"Behavior"
set encoding=utf_8
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai "Auto-indent"
set si "Smart-indent"
set splitbelow
set splitright
let NERDTreeShowHidden = 1
"Relative Numbers"
set relativenumber
let NERDTreeShowLineNumbers=1 "Display relatives in nerdtree too"
autocmd FileType nerdtree setlocal relativenumber "nerdtree still"
autocmd BufEnter * set rnu
"Remaps"
xnoremap p pgvy
map <C-n> :NERDTreeToggle<CR>
nnoremap <UP> <C-W><C-J> " Map arrow keys to move around splits
nnoremap <DOWN> <C-W><C-K>
nnoremap <RIGHT> <C-W><C-L>
nnoremap <LEFT> <C-W><C-H>
map <C-p> :CtrlP<CR>
"Pathogen"
execute pathogen#infect()
