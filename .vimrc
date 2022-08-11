call plug#begin()

Plug 'urbit/hoon.vim'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter' ", { 'tag': 'v0.9' }
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive' ", { 'tag': 'v2.3' }
Plug 'jiangmiao/auto-pairs'

call plug#end()

" activate gruvbox colorscheme
autocmd vimenter * ++nested colorscheme gruvbox

" autosave (commented out because it doesn't work)
" autocmd TextChanged,TextChangedI <*> silent write

" TODO: configure auto pairs for hoon
" - no auto-close for tic
" - add closing ==
" - add closing --

set signcolumn=yes " always show column for git gutter
set updatetime=100 " git gutter debounce ms

set laststatus=2
set noshowmode
let g:lightline = {
  \   'colorscheme': 'PaperColor',
  \   'active': {
  \     'left':  [ [ 'mode', 'paste' ],
  \                [ 'gitbranch', 'readonly', 'filename', 'modified' ],
  \              ],
  \     'right': [ [ 'lineinfo' ],
  \                [ ],
  \                [ ],
  \              ],
  \   },
  \   'component_function': {
  \     'gitbranch': 'FugitiveHead'
  \   },
  \ }

set expandtab
set tabstop=2
set shiftwidth=2

set hlsearch
set incsearch

" file browser settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4

let mapleader = "g"

noremap  <leader>oa :e<space>~/urbit/pkg/arvo/sys/vane/ames.hoon<return>
noremap  <leader>ob :e<space>~/urbit/pkg/arvo/sys/vane/behn.hoon<return>
noremap  <leader>oc :e<space>~/urbit/pkg/arvo/sys/vane/clay.hoon<return>
noremap  <leader>od :e<space>~/urbit/pkg/arvo/sys/vane/dill.hoon<return>
noremap  <leader>oe :e<space>~/urbit/pkg/arvo/sys/vane/eyre.hoon<return>
noremap  <leader>og :e<space>~/urbit/pkg/arvo/sys/vane/gall.hoon<return>
noremap  <leader>oj :e<space>~/urbit/pkg/arvo/sys/vane/jael.hoon<return>
noremap  <leader>oi :e<space>~/urbit/pkg/arvo/sys/vane/iris.hoon<return>
noremap  <leader>ok :e<space>~/urbit/pkg/arvo/sys/vane/khan.hoon<return>

noremap  <leader>oh :e<space>~/urbit/pkg/arvo/sys/hoon.hoon<return>
noremap  <leader>ov :e<space>~/urbit/pkg/arvo/sys/arvo.hoon<return>
noremap  <leader>ol :e<space>~/urbit/pkg/arvo/sys/lull.hoon<return>
noremap  <leader>oz :e<space>~/urbit/pkg/arvo/sys/zuse.hoon<return>
