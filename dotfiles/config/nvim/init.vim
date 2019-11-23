set clipboard+=unnamedplus       " share clipboard with X

let $MYVIMRC_DIR = fnamemodify($MYVIMRC, ':h')

exec 'source ' . $MYVIMRC_DIR . '/plugins.vim'
exec 'source ' . $MYVIMRC_DIR . '/config.vim'
exec 'source ' . $MYVIMRC_DIR . '/plugins-config.vim'
exec 'source ' . $MYVIMRC_DIR . '/coc-config.vim'

autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab

set hidden                      " keep buffers open
set background=dark
colo Tomorrow-Night-Eighties
