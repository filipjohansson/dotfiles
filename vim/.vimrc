call plug#begin('~/.vim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'jparise/vim-graphql'
" Plug 'tomasiser/vim-code-dark'

Plug 'airblade/vim-gitgutter'
call plug#end()

" let g:coc_global_extensions = ['coc-tsserver', 'coc-css', 'coc-json']
" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   :echo "hello"
"   let g:coc_global_extensions += ['coc-eslint']
" endif

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" inoremap <silent><expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()


" colorscheme codedark

set autoindent
set encoding=utf-8
set hidden
set hlsearch
set incsearch
set number
set ruler
set showcmd
syntax enable
set wrap
set scrolloff=1
set wildmenu
set background=dark
set formatoptions+=j " Delete comment characters when joining lines.

imap jj <Esc>
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
