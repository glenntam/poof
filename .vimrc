"""""""""""""""
" my defaults "
"""""""""""""""
set nocompatible                                 " sets to vim, not vi 
set number                                       " show line numbers in gutter
set ruler                                        " show column number in status bar
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

" just use z to toggle all folds
nnoremap z :call ToggleFold()<CR>
function! ToggleFold()
    if &foldlevel == 0
        set foldlevel=20
    else
        set foldlevel=0
    endif
endfunction

" if desired, turn off cursor keys:
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>


""""""""""""""""""
" colors/display "
""""""""""""""""""
syntax on                                        " syntax highlighting. filetype=on when syntax is on
"let base16colorspace=25
colorscheme badwolf
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


""""""""""
" Python "
""""""""""
augroup python
    autocmd!
    " autocmd! needed to release previous autocmds or else vim will eventually get clogged up
    autocmd Filetype python setlocal tabstop=8 softtabstop=4 expandtab autoindent shiftwidth=4
    " setlocal means:     these settings only apply to the current buffer, not any new buffers
    " tabstop=4 means:    the length of one tab is 4 spaces
    " expandtab means:    one tab press is actually made of spaces
    " autoindent means:   if you start a new line, use the current indentation
    " shiftwidth=4 means: use 4 spaces for autoindent
augroup END


""""""
" GO "
""""""
augroup go
    autocmd!
    " autocmd! needed to release previous autocmds or else vim will eventually get clogged up
    autocmd Filetype go setlocal autoindent
augroup END

