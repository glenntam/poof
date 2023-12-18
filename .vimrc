"""""""""""""""
" my defaults "
"""""""""""""""
set nocompatible                                 " sets to vim, not vi 
set number                                       " show line numbers in gutter
set ruler                                        " show column number in status bar
set hidden                                       " use hidden buffers, allows for fast buffer switching
set fileformat=unix                              " how carriage returns are interpreted (options are: dos, mac, unix)
set ignorecase                                   " set case insensitive search
set foldmethod=indent                            " indent or syntax
set foldlevelstart=20                            " expand folds on open

set nobackup
set nowritebackup
set noswapfile
set noundofile


""""""""""""""""
" key bindings "
""""""""""""""""
inoremap kj <Esc>

" set 'normal' backspace behaviour
set backspace=indent,eol,start

 
""""""""""
" colors "
""""""""""
colorscheme badwolf
syntax on                                        " syntax highlighting. filetype=on when syntax is on
hi Normal guibg=NONE ctermbg=NONE                " set background to transparent
hi NonText guibg=NONE ctermbg=NONE               " set empty background areas to transparent

" uncomment below if characters are messed up on iTerm over ssh
"if &term =~ '256color'
"  disable Background Color Erase (BCE)
"  set t_ut=
"endif


"""""""""""""""
"  scrolling  "
"""""""""""""""
set scrolloff=999                                " keep cursor in the middle
set scroll=7                                     " ctrl-d, ctrl-u moves by 7 lines
"set ttyfast                                     " sends more characters to redraw instead of one line at a time
set nottyfast                                    "     --pick one or the other--
set lazyredraw                                   " do not update the screen until macros are finished executing
"set nolazyredraw                                "     --pick one or the other--
set mouse=a                                      " remember to also enable mouse reporting in terminal emulator (e.g. iTerm)
noremap <ScrollWheelUp>     10<C-Y>              " set mouse scroll to 10 lines at a time
noremap <ScrollWheelDown>   10<C-E>              " set mouse scroll to 10 lines at a time


"""""""""
" netrw "
"""""""""
let g:netrw_banner = 0                           " 0 disable the netrw banner
let g:netrw_liststyle = 3                        " 3 is nothing, 2 shows bars
let g:netrw_browse_split = 4                     " 4 open new files in previous window
let g:netrw_altv = 1                             " 1 open it in vertical split (use w/ browse_split)
let g:netrw_preview = 1                          " 1 open the preview on the vertically
let g:netrw_winsize = 20                         " % of netrw pane compared to whole width

" hide netrw on startup, map toggle key to Ctrl-E
let g:NetrwIsOpen=0
function! ToggleNetrw()
    if g:NetrwIsOpen==1
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction
noremap <silent> <C-E> :call ToggleNetrw()<CR>
