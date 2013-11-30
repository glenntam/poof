<<<<<<< HEAD
colorscheme pablo 
=======
colorscheme desert
>>>>>>> 6a62bb29d6bae5b5cfca9b4636124fe2436c6034
set guifont=Menlo:h15               " same as my Sublime Text 2
inoremap kj <Esc>
" remap escape key to 'kj' key sequence, don't inline comment
set timeoutlen=500                  " set wait time for second keystroke command. default=1000
set laststatus=2                    " tell Vim to always put a status line in, even if there is only one window
set wrapscan                        " Set the search scan to wrap around the file
set vb                              " set visual bell, turn off beeping
set history=500                     " how many previous commands vim remembers
syntax on                           " syntax highlighing

" sets status line. TODO: customize later g
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Buf:\#%n\

" following block from:
" http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide
" http://logicalfriday.com/2011/07/18/using-vim-with-pathogen/

" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

"" smart indent, converts 1 tab to 4 spaces
"set smartindent
"set tabstop=4
"set shiftwidth=4
"set expandtab

" what does the following 2 lines mean? TODO: find out what below does
"filetype on                         " try to detect filetypes
"filetype plugin indent on           " enable loading indent file for filetype

"
"" for cold folding, type 'za' to open and close
"set foldmethod=indent
"set foldlevel=99
"
"" pressing tab will cycle through file list for filename completion. like bash
"set wildmode=longest,list,full
"set wildmenu
"
"" CHEATSHEET NOTES
"" To create split windows on the fly
"" Vertical Split= Ctrl+w + v
"" Horizontal Split= Ctrl+w + s
"" Close current windows: Ctrl+w + q
"
"" bind Control+movement to switch windows
"map <c-j> <c-w>j
"map <c-k> <c-w>k
"map <c-l> <c-w>l
"map <c-h> <c-w>h
"
"" show hidden files in NERDtree
"let NERDTreeShowHidden=1
"
"" For tab completion and documentation. 
"" Need to enable the menu and pydoc preview
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"
"" FIXME NOT WORKINGi, put these somewhere else? these aren't vimrc commands 
"" For fugitive git intergration
""%{fugitive#statusline()}
"
"" Add the virtualenv's site-packages to vim path
""py << EOF
""import os.path
""import sys
""import vim
""if 'VIRTUAL_ENV' in os.environ:
""    project_base_dir = os.environ['VIRTUAL_ENV']
"""    sys.path.insert(0, project_base_dir)
""    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
""    execfile(activate_this, dict(__file__=activate_this))
""EOF
"
"
"
