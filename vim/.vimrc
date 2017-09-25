set encoding=utf-8 
set fileencodings=utf-8
syntax on

"" ColorScheme
set runtimepath+=~/.vim/plugged/vim-one/
set runtimepath+=~/.vim/plugged/lightline.vim/
set t_Co=256
colorscheme wombat256i

" Auto completion menu colors
highlight Pmenu ctermfg=124 ctermbg=7
highlight PmenuSel ctermfg=7 ctermbg=124

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

set laststatus=2
set noshowmode

set number
set mouse-=a

if &term =~ 'rxvt'
  " solid underscore
  let &t_SI .= "\<Esc>[3 q"
  " solid block
  let &t_EI .= "\<Esc>[3 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
endif

" text wrapping, do not forget the t mode in fo (:set fo? and :set fo+=t)
set textwidth=79
set colorcolumn=80
highlight ColorColumn ctermbg=Gray
" tab to 4 spaces (C-V-Tab si un jour je veux ecrire un vrai tab)
set expandtab
set tabstop=4
set shiftwidth=4

" indent
filetype plugin indent on
