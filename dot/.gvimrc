"display settings for gvim
" for Mac.
" ----------------------

set columns=120
set lines=60

set antialias
colorscheme molokai

set showtabline=4
set transparency=2

set guifont=Menlo\ Regular:h18

set guioptions-=T " no tool bar
set guioptions-=m " no menu bar
set guioptions-=r " no right scrollbar
set guioptions-=R " no right scrollbar
set guioptions-=l " no left scrollbar
set guioptions-=L " no left scrollbar

if s:ext=="safari"
set columns=120
set lines=60
end


