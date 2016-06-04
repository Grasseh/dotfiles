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
"Remaps"
map <C-n> :NERDTreeToggle<CR>
"Pathogen"
execute pathogen#infect()
