set tabstop=4
set expandtab
set ignorecase
set hlsearch
set number
set wrap!
set listchars=trail:$
set list
set autoindent
set cindent
set shiftwidth=4

au BufWinLeave ?* mkview 1
au BufWinEnter ?* silent loadview 1

set background=dark
set t_Co=256

" syntax highlighting for cpp11/14/17/20 from octol github repo
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

" set vim to chdir for each file
if exists('+autochdir')
    set autochdir
else
    autocmd BufEnter * silent! lcd %:p:h:gs/ /\\ /
endif

set colorcolumn=120

" dracula colorscheme
if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula

" for using universal ctags
set tags=./tags;

" showing current filename
set laststatus=2
set statusline+=%F
