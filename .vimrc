syntax on
set shiftwidth=2
set softtabstop=0
set tabstop=2
set autoindent
set smartindent
set expandtab
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
set backspace=indent,eol,start

set nu
set clipboard=unnamed
"set background=dark
set mouse=a

"WSL stuff
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

"Plug ins
execute pathogen#infect()
filetype plugin indent on

"Vim Latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

"NERDTree
map <C-o> :NERDTreeToggle<CR>

"Powerline font
let g:airline_powerline_fonts = 1

"Vim Slime
let g:slime_target = "tmux"

"Status bar
let g:lightline = {
      \       'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

