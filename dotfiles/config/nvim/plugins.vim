call plug#begin('~/.vim/plugged')

"vim tweaks
Plug 'ciaranm/securemodelines'
Plug 'embear/vim-localvimrc'


" utils/functionality
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

Plug 'derekwyatt/vim-fswitch'
Plug 'tomtom/tcomment_vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'powerman/vim-plugin-viewdoc'
Plug 'majutsushi/tagbar'
Plug 'digitaltoad/vim-pug'
Plug 'lambdalisue/suda.vim'

Plug 'Shougo/unite.vim'
Plug 'Shougo/unite-outline'
" Plug 'kannokanno/unite-todo'
" Plug 'osyo-manga/unite-quickfix'
" Plug 'terryma/vim-multiple-cursors'

" completion
Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
" Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
" Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

Plug 'vim-vdebug/vdebug'
" Plug 'zxqfl/tabnine-vim'

" linting
" Plug 'w0rp/ale'
"
" Plug 'alaviss/nim.nvim'
Plug 'baabelfish/nvim-nim'
Plug 'posva/vim-vue'


" git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'low-ghost/nerdtree-fugitive'
Plug 'mhinz/vim-signify'


" swag
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'plytophogy/vim-virtualenv'


Plug 'summivox/vim-nfo'
Plug 'leafgarland/typescript-vim'
Plug 'drewtempelmeyer/palenight.vim'

" themes
Plug 'chriskempson/tomorrow-theme'


call plug#end()
