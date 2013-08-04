call pathogen#infect()

filetype on
filetype plugin on
filetype indent on

colorscheme marklar

" -----------------------

" NERDTree customization
map <leader>n :NERDTreeToggle<CR>

" -----------------------

" Tagbar customization
map <leader>\ :TagbarOpen<CR>
map <leader>/ :TagbarClose<CR>
" -----------------------

" Window movment customization
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
" ----------------------

" Syntastic customization
let g:syntastic_stl_format = '[%E{Errors: line %fe | Total Errors: %e}%B{, }%W{Warning: line %fw Total Warnings: %w}]'
let g:syntastic_quiet_warnings=1
set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_auto_loc_list=1
" ----------------------

" Supertab customization
"au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=menuone,longest,preview
" -----------------------

" Clang customization

let g:clang_complete_auto = 0
" This is needed in order to fix issues of functions not completed in current
" project
let g:clang_user_options='|| exit 0'
" ------------------------

" Jedi-vim customization
let g:jedi#popup_on_dot = 0
" ------------------------

" Automatically generate tags after editing my own help docs
autocmd BufWrite sample.txt :helptags ~/.vim/doc/
autocmd BufWrite python.txt :helptags ~/.vim/doc/
autocmd BufWrite bash.txt :helptags ~/.vim/doc/
