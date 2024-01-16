"""""""""""""""""""""""""""
" non-destructive g-vimrc "
"""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile
set noundofile


""""""""""""""""""
" basic defaults "
""""""""""""""""""
inoremap jk <Esc>
set nocompatible                        " sets to vim, not vi
syntax on                               " syntax highlighting. filetype=on when syntax is on


"""""""""""""""""""""""""
"  ssh display options  "
"""""""""""""""""""""""""
set ttyfast                             " sends more characters to redraw instead of one line at a time
"set nottyfast                          "     --pick one or the other--

set lazyredraw                          " only update the screen until macros are finished executing
"set nolazyredraw                       "     --pick one or the other--
