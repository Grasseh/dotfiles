"Display"
set ruler     "Display current selected" 
set showmatch "Matching Brackets"
syntax enable
set number
colors zenburn
"Behavior"
set encoding=utf_8
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto-indent"
set si "Smart-indent"
let NERDTreeShowHidden=1
set laststatus=2
let g:airline_theme='term'
set splitbelow
set splitright
let NERDTreeShowHidden = 1
"Remaps"
map <C-n> :NERDTreeToggle<CR>
nnoremap <UP> <C-W><C-J> "Map arrow keys to move around splits"
nnoremap <DOWN> <C-W><C-K>
nnoremap <RIGHT> <C-W><C-L>
nnoremap <LEFT> <C-W><C-H>
"Relative Numbers"
set relativenumber
let NERDTreeShowLineNumbers=1 "Display relatives in nerdtree too"
autocmd FileType nerdtree setlocal relativenumber "nerdtree still"
autocmd BufEnter * set rnu
"Pathogen"
execute pathogen#infect()
