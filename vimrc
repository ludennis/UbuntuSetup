set tabstop=2
set expandtab
set ignorecase
set hlsearch
set number
set wrap!
set listchars=trail:$
set list

au BufWinLeave ?* mkview 1
au BufWinEnter ?* silent loadview 1

set background=dark
set t_Co=256

" syntax highlighting for cpp11/14/17/20 from octol github repo
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
