"
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
set showmatch                       " set show matching parenthesis
set foldmethod=syntax               " type 'za' to open/close folds
set foldlevel=99                    " type 'za' to open/close folds
set scrolloff=999                   " keep cursor in the middle
set number                          " show line numbers
set ruler                           " show column number on status bar
set textwidth=0                     " do not automatically add new lines when typing.
set hidden                          " buffers hidden instead of closed
set ignorecase                      " ignore case when searching
set smartcase                       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch                        " highlight search terms
set incsearch                       " show search matches as you type
set mouse=a                         " enables mouse
set showcmd                         " shows <leader> visually (and other things?)
"
filetype on                         " try to detect filetypes, must come after Pathogen
filetype plugin indent on           " enable loading indent file for filetype
syntax off                           " use vim default syntax highlighting
syntax enable                       " now set personal syntax highlighting
set backspace=indent,eol,start      " Intuitive backspacing in insert mode
set pastetoggle=<F2>                " toggle pastemode when vim smartindents too much from clipboard
set list

set encoding=utf-8
"
"
" Python specific
au BufNewFile,BufRead *.py
    \ set fileformat=unix"                " for github mostly
    \ set expandtab                       " expand tabs to spaces
    \ set tabstop=4                       " a tab is four spaces
    \ set softtabstop=4                   " defaults to same as tabstop anyways onff
    \ set shiftwidth=4                    " number of spaces to use for autoindenting
    \ set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
    \ set smarttab                        " insert tabs on the start of a line according to shiftwidth, not tabstop
    \ set autoindent                      " always set autoindenting on
    \ set copyindent                      " copy the previous indentation on autoindenting
let g:python_highlight_all = 0      " enable all Python syntax highlighting features
autocmd filetype python set listchars=tab:>.,trail:.,extends:#,nbsp:.


"The following line sets the smartindent mode for *.py files. It means that after typing lines which start with any of the keywords in the list (ie. def, class, if, etc) the next line will automatically indent itself to the next level of indentation:
set smartindent                     "  
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" Many people like to remove any extra whitespace from the ends of lines. Here is one way to do it when saving your file.
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" JS, HTML, CSS
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Status line
" https://shapeshed.com/vim-statuslines/#building-a-statusline
"function! GitBranch()
"  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction
"
"function! StatuslineGit()
"  let l:branchname = GitBranch()
"  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction

set statusline=
set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 


" KEYMAPS
" set leader key first
let mapleader="\<Space>"

" set leader-r to reload (:source) current file
nnoremap <leader>r :so %<CR>

" for esc
inoremap kj <Esc>

" <CR> in normal mode adds <CR> to text and stays in command mode
"nmap <CR> O<Esc>

" alt-o, other window
nnoremap ø :wincmd w<CR>

" alt-b, show buffer list
nnoremap ∫ :buffers<CR>:buffer<Space>

" alt-l, show/hide NERDtree
nmap <silent> ¬ :execute 'NERDTreeToggle ' . getcwd()<CR> 


"" NERDTree
"" 1. autostart even without specifying file
autocmd vimenter * if !argc() | NERDTree | endif
"" 2. close vim if NT is only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"" 3. don't show binaries and other misc stuff 
let NERDTreeShowHidden=-1
let NERDTreeIgnore=['\.pyc$', '\~$', '\.rnd$','\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$']

"
if has('nvim')
	call plug#begin('~/.local/share/nvim/plugged')
	Plug 'davidhalter/jedi-vim'
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
	call plug#end()
endif
