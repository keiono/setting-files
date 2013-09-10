" Personalized .vimrc by Keiichiro Ono
"
" September 9, 2013
" Rev. 0.1.3

set nocompatible
filetype off

" For Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" Plugins
Bundle 'tpope/vim-abolish.git'
Bundle 'tpope/vim-characterize.git'
Bundle 'tpope/vim-commentary.git'
Bundle 'tpope/vim-dispatch.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-ragtag.git'
Bundle 'tpope/vim-repeat.git'
Bundle 'tpope/vim-scriptease.git'
Bundle 'tpope/vim-sensible.git'
Bundle 'tpope/vim-sleuth.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-tbone.git'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'nelstrom/vim-docopen'
Bundle 'vim-scripts/prettyprint.vim.git'

Bundle 'vim-scripts/mru.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimshell'
Bundle 'python.vim'

Bundle 'taglist.vim'

" Markdown
Bundle 'tpope/vim-markdown.git'
Bundle 'nelstrom/vim-markdown-folding.git'

" JavaScript Plugins
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'JavaScript-Indent'
Bundle 'thinca/vim-quickrun.git'
Bundle 'tomtom/checksyntax_vim'

" For color scheme
Bundle 'vim-scripts/CSApprox'
Bundle 'project.tar.gz'

" Indent visualization
Bundle 'nathanaelkane/vim-indent-guides'


" Syntastic Settings
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" neocomplcache settings
" ------------------------
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'


" Display Settings
set cursorline
set number
set numberwidth=4
set spell
set spelllang=en_us
set textwidth=100
set showmode " show mode
set title " show filename
set ruler
set list
set listchars=tab:>-,trail:-,extends:>,precedes:< " eol:$
set laststatus=3
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" edit
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=4 shiftwidth=4 softtabstop=0
set showmatch " show mactch brace
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

" no bell
set visualbell
set t_vb=

" backup
set backup
set backupdir=~/.vim/vim_backup
set swapfile
set directory=~/.vim/vim_swap

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

" Plugin setting
" --------------------

" NEED Commenter
let NERDShutUp = 1 "no alart undfined filetype
let NERDTreeShowHidden = 1

"Misc. settings
syntax enable
colorscheme molokai

highlight CursorLineNr guifg=#505050

" EasyMotion
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key=";"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=white
