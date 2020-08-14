source $VIMRUNTIME/defaults.vim

""" dein.vim settings
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim install check
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

" begin settings
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'
  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})
  " end settings
  call dein#end()
  call dein#save_state()
endif

" plugin installation check
if dein#check_install()
  call dein#install()
endif

" plugin remove check
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif

""" end dein.vim


set shell=fish

set swapfile

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

