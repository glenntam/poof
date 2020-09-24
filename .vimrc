" GENERAL customizations
set nocompatible                    " sets to vim, not vi
set t_Co=256                        " 256 color mode, for iTerm2
colorscheme monokai
set guifont=Menlo:h12               " same as my Sublime Text 2
set backup                          " turn on backups to below directories
set backupdir=~/.vim/autosaves
set directory=~/.vim/autosaves
set title                           " adjusts xterm window title
set timeoutlen=700                  " set wait time for second keystroke command. default=1000
set laststatus=2                    " tell Vim to always put a status line in, even if there is only one window
set wrapscan                        " Set the search scan to wrap around the file
set visualbell                      " set visual bell, turn off beeping
set history=500                     " how many previous commands vim remembers
syntax on                           " syntax highlighting
syntax enable                       " syntax highlighting
set showmatch                       " set show matching parenthesis
set foldmethod=syntax               " type 'za' to open/close folds
set foldlevel=99                    " type 'za' to open/close folds
set scrolloff=999                   " keep cursor in the middle
set number                          " show line numbers
set hidden                          " buffers hidden instead of closed
set tabstop=4                       " a tab is four spaces
set autoindent                      " always set autoindenting on
set copyindent                      " copy the previous indentation on autoindenting
set shiftwidth=4                    " number of spaces to use for autoindenting
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab                        " insert tabs on the start of a line according to shiftwidth, not tabstop
set smartindent                     " converts tabs to spaces?
set expandtab                       " no clue
set ignorecase                      " ignore case when searching
set smartcase                       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch                        " highlight search terms
set incsearch                       " show search matches as you type
set mouse=a                         " enables mouse
set showcmd                         " shows <leader> visually (and other things?)
set ruler

set backspace=indent,eol,start      " Intuitive backspacing in insert mode

set pastetoggle=<F2>                " toggle pastemode when vim smartindents too much from clipboard
set list
autocmd filetype python set listchars=tab:>.,trail:.,extends:#,nbsp:.

" KEYMAPS
" set leader key first
let mapleader="\<Space>"
" set leader-r to reload (:source) current file
nnoremap <leader>r :so %<CR>
" for esc
inoremap kj <Esc>
" alt-o, other kindow
nnoremap ø :wincmd w<CR>
" alt-b, show buffer list
nnoremap ∫ :buffers<CR>:buffer<Space>
" alt-l, show/hide NERDtree
nmap <silent> ¬ :execute 'NERDTreeToggle ' . getcwd()<CR> 

" sets status line. TODO: customize later g
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Buf:\#%n\

" Pathogen
filetype off                        " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags()            " generate helptags for everything in 'runtimepath'
filetype on                         " try to detect filetypes, must come after Pathogen
filetype plugin indent on           " enable loading indent file for filetype

" NERDTree
" 1. autostart even without specifying file.  2. close vim if NT is only window left open
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1
