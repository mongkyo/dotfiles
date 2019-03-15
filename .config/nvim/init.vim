set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Plugin들의 setting을 불러오도록 설정
let vimsettings = '~/.vim/settings'
let uname = system("uname -s")

for fpath in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'source' fpath
endfor

let g:python3_host_prog = '/usr/local/var/pyenv/shims/python3'
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

" vim awesome list
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
" Plug 'kien/ctrlp.vi'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'Yggdroot/indentLine'

Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode', {'branch': 'develop'}

Plug 'mattn/emmet-vim'

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }

Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()