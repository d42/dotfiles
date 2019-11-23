
" localvimrc
let g:localvimrc_persistent = 1
let g:localvimrc_sandbox = 0


" nerdtree

nmap <leader>N :NERDTreeToggle<CR>
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" let NERDTreeRespectWildIgnore = 1

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('py', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

let g:NERDTreeUpdateOnWrite = 0

"vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:airline#extensions#syntastic#enabled  = 1
let g:airline#extensions#hunks#enabled  = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" tagbar
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
" let g:tagbar_autoclose = 1
let g:tagbar_type_javascript = {'ctagsbin' : '/usr/bin/jsctags'}
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

" unite.vim

nmap <leader>a :FSHere<CR>
nmap <leader>f :FZF<CR>
nmap <leader>b :Unite buffer<CR>
nmap <leader>g :Unite grep:.::<CR>
nmap <leader>m :Unite menu<CR>

"set updatetime=300                  " Smaller updatetime for CursorHold & CursorHoldI
set signcolumn=yes                  " always show signcolumns
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.

"ycm
let g:ycm_python_binary_path = 'python'
