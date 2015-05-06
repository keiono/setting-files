"
" Personalized .vimrc by Keiichiro Ono
"
" 5/4/2015
"
" Rev. 0.4.0

" -------- Enable Vundle ------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'


" ------------ Plugins ---------------

" For Dash
Plugin 'rizzatti/dash.vim'

" For Python Development
Plugin 'davidhalter/jedi-vim'

Plugin 'tpope/vim-abolish.git'
Plugin 'tpope/vim-characterize.git'
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-dispatch.git'
Plugin 'tpope/vim-eunuch.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-ragtag.git'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-scriptease.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'tpope/vim-sleuth.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-tbone.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nelstrom/vim-docopen'
Plugin 'vim-scripts/prettyprint.vim.git'

Plugin 'vim-scripts/mru.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'Shougo/vimshell'

Plugin 'taglist.vim'
Plugin 'sandeepcr529/Buffet.vim'

" Markdown
Plugin 'tpope/vim-markdown.git'
Plugin 'nelstrom/vim-markdown-folding.git'

" rst Document support
Bundle 'Rykka/riv.vim'

" JavaScript Plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'JavaScript-Indent'
Plugin 'thinca/vim-quickrun.git'
Plugin 'tomtom/checksyntax_vim'

" For color scheme
Bundle 'project.tar.gz'
call vundle#end()            " required
filetype plugin indent on    " required

" Syntastic Settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" Display Settings
syntax enable
colorscheme molokai

set cursorline
set colorcolumn=80
set number
set numberwidth=4
set shiftround
set infercase
set virtualedit=all
set spell
set spelllang=en_us
set textwidth=0
set showmode " show mode
set title " show filename
set ruler
set list
" set listchars=tab:>-,trail:-,extends:>,precedes:< " eol:$
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set laststatus=3
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" edit
set history=10000
set wrapscan
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=4 shiftwidth=4 softtabstop=0
set showmatch " show match brace
set wildmenu
set clipboard=unnamed " share OS clipboard
set autoread
set hidden
set showcmd
set backspace=indent,eol,start

highlight link ZenkakuSpace Error
match ZenkakuSpace /　/

" move
nnoremap j gj
nnoremap k gk
set whichwrap=b,s,h,l,<,>,[,]

" When insert mode, enable hjkl and enable go to home/end.
imap <c-o> <END>
imap <c-a> <HOME>
imap <c-h> <LEFT>
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <Right>

" search
set incsearch
set ignorecase
set smartcase
set hlsearch

" no bell
set visualbell
set t_vb=

" Disable backup & swap
set nowritebackup
set nobackup
set noswapfile

" key map
let mapleader = ","
noremap <CR> o<ESC>

" auto command
augroup BufferAu
  autocmd!
  " change current directory
  autocmd BufNewFile,BufRead,BufEnter * if isdirectory(expand("%:p:h")) && bufname("%") !~ "NERD_tree" | cd %:p:h | endif
augroup END

" Other
set fileformats=unix,dos,mac
set fileformat=unix

" NEED Commenter
let NERDShutUp = 1 "no alart undfined filetype
let NERDTreeShowHidden = 1

highlight CursorLineNr guifg=#505050

" EasyMotion Plugin settings
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key=";"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=white

" File list
nnoremap <silent><Space>j    :Explore<CR>
nnoremap <silent><Space>l    :Bufferlist<CR>
nnoremap <silent><Space>s    :<C-u>update<CR>
