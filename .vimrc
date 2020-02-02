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

nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <CR> i<CR><ESC>

set clipboard=unnamed

