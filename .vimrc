source $VIMRUNTIME/defaults.vim

set fileencodings=utf-8,cp932

set fenc=utf-8
set autoread
set hidden
set showcmd

set number
set cursorline
" set cursorcolumn
set virtualedit=onemore
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
syntax enable
set smartindent

set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2

set ignorecase
set smartcase
set wrapscan
set hlsearch
set incsearch
set wildmenu

" cursor
if has('vim_starting')
  let &t_SI .= "\e[6 q"
  let &t_EI .= "\e[2 q"
  let &t_SR .= "\e[4 q"
endif

" keybind
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <CR> i<CR><ESC>

set clipboard=unnamed

