set backspace=indent,eol,start
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file

set hidden                  " if hidden is not set, TextEdit might fail.

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

set splitright
set splitbelow
set termguicolors

let mapleader = ","
nnoremap ; :

" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic


set ignorecase              " Default to using case insensitive searches,
set hlsearch
set smarttab                " Handle tabs more intelligently 
set smartcase


set tw=0
set nowrap
set number
set nocursorline
set nocursorcolumn
set colorcolumn=81 " one column after limit
set textwidth=80
set inccommand=split
"set virtualedit=all
set showcmd
set guifont=Fira\ Code\ Medium:h9

set mouse=a

set foldmethod=indent
set foldlevelstart=999

set formatoptions-=t  " disable wrap

set cpoptions+=I " disable indent removing in insert mode (moving by arrow keys)

set showbreak=↪
set linebreak
set breakindentopt=shift:4,sbr
set breakindent

set wildmenu
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**
set wildignore+=*.swp,*.bak
set wildignorecase " IgNoReCaSe :3
set listchars=tab:>-,eol:$,trail:-,precedes:<,extends:>
"au syntax python set list
set list
nnoremap Q <nop>

set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set autoread                " automatically re-read changed files.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.
set noro                    " Disable read only

set confirm                 " Y-N-C prompt if closing with unsaved changes.
set laststatus=2            " Always show statusline, even if only 1 window.

au FileType html set tabstop=2               " <tab> inserts 2 spaces 
au FileType html set shiftwidth=2            " but an indent level is 2 spaces wide.
au FileType html set softtabstop=2           " <BS> over an autoindent deletes both spaces.

au FileType pug set tabstop=2               " <tab> inserts 2 spaces 
au FileType pug set shiftwidth=2            " but an indent level is 2 spaces wide.
au FileType pug set softtabstop=2           " <BS> over an autoindent deletes both spaces.

au BufNewFile,BufRead *.classpath set filetype=eclipse_classpath
au BufNewFile,BufRead *.jinja set filetype=jinja.jinja2.html


function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
autocmd User GnvimScroll :
cnoremap w!! w !sudo tee > /dev/null %
syn match   myTodo   contained   "\<\(TODO\|FIXME\):"
hi def link myTodo Todo
