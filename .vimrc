" for opening files
map <silent> <F3> :NERDTreeToggle<CR>
map <silent> <F2> :Files<CR>
map <silent> <F4> :syntax sync fromstart<CR>

imap cll console.log()<Esc>==f(a

set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

autocmd Filetype go setlocal noexpandtab

:set cursorline

:set ignorecase
:set smartcase

set incsearch
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
set laststatus=2

set number
color desert

" set mouse=a
let g:fzf_layout = { 'down': '~60%' }

" autocmd vimenter * NERDTree
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}

let g:NERDTreeWinPos = "right"

call plug#begin()

Plug 'posva/vim-vue'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
" be sure to read full install instructions. this still needs
" you to cd ~/.vim/plugged/YouCompleteMe
" python ./install.py --js-completer
Plug 'Valloric/YouCompleteMe'
Plug 'ap/vim-css-color'
Plug 'leafgarland/typescript-vim'
Plug 'artur-shaik/vim-javacomplete2'

call plug#end()
