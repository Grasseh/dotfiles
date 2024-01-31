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
map <C-p> :GFiles<CR>
:command W w
:command Q q
:command Wq wq
:command Wqa wqa
:command Qa qa
:let mapleader = " "

"Leader commands"
"Yank to tmp"
vmap <leader>tmpy :w! /tmp/vitmp<CR>
nmap <leader>tmpw :wviminfo! /tmp/viminfo<CR>
"Read from tmp"
nmap <leader>tmpp :r! cat /tmp/vitmp<CR>
nmap <leader>tmpr :rviminfo! /tmp/viminfo<CR>
"Copy-paste to and from register"
vmap <leader>yy "+yy
nmap <leader>yy "+yy
nmap <leader>dd "+dd
nmap <leader>pa "+p
"Set paste mode for indents"
nmap <leader>sp :set paste<CR>
nmap <leader>snp :set nopaste<CR>
"Clean whitespaces"
nmap <leader>ws :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
"Clean tabs"
nmap <leader><TAB> :retab<CR>
"Run python"
nmap <leader>py :QuickRun python3<Return>
nmap <leader>pt :TestNearest<Return>
"Run rails tests"
nmap <leader>rt :RunRailsFocusedTest<CR>
"search recursively"
nmap <leader>ag :Ag --ignore={'*node_modules*','*dist*','*tmp*','*assets*'}<CR>
"Check files in git status"
nmap <leader>gf :GFiles?<CR>
"Ale navigation"
nmap <leader>an :ALENext<CR>
nmap <leader>ap :ALEPrevious<CR>
nmap <leader>ai :ALEInfo<CR>
nmap <leader>/ :Ag <space><C-R><C-W>

"Pathogen"
execute pathogen#infect()
"Ale"
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_linters = {
\   'python': ['black', 'ruff', 'mypy'],
\}

"Airline"
let g:airline_powerline_fonts = 1
"Vimux"
let g:VimuxHeight = "35"
let g:VimuxOrientation = "h"
let g:vimux_ruby_clear_console_on_run = 0
"Tmux fix"
set t_ut=
let g:ycm_lsp_dir = '/home/stegag@org.nasdaqomx.com/lsp-examples'
let g:ycm_language_server = []
let g:ycm_language_server += [
  \   {
  \     'name': 'ruby',
  \     'cmdline': [ expand( g:ycm_lsp_dir . '/ruby/bin/solargraph' ), 'stdio' ],
  \     'filetypes': [ 'ruby' ],
  \   },
  \ ]
let g:ycm_language_server += [
  \   {
  \     'name': 'python',
  \     'cmdline': [ 'node', expand( g:ycm_lsp_dir . '/python/node_modules/.bin/pyright-langserver' ), '--stdio' ],
  \     'filetypes': [ 'python' ],
  \   },
  \ ]
let g:ycm_confirm_extra_conf = 0
let test#python#runner = 'pytest'
let test#strategy = "vimux"
