
color wombat256grf
syntax on
filetype plugin indent on

set t_Co=256

set sw=4 ts=4 et

" can use zz to re-center manually too
set scrolloff=5

" vim-buftabline plugin
let buftabline_numbers=1

let g:netrw_liststyle=3
let g:netrw_banner=0

" jj instead of escape! Cursor feels a little weird after typing a j though
" (it lags for a character in case the second j shows up)
inoremap jj <ESC>

" Kind of want something to for 10x^e and 10x^y but ehh

" https://thoughtbot.com/blog/faster-grepping-in-vim
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
  let g:ackprg = 'ag --vimgrep'
endif
