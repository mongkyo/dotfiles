set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin('~/.local/share/nvim/plugged')
" Nvim specific plugins
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()

source ~/.vimrc

" Plugin들의 setting을 불러오도록 설정
"let vimsettings = '~/.vim/settings'
"let uname = system("uname -s")

"for fpath in split(globpath(vimsettings, '*.vim'), '\n')
"  exe 'source' fpath
"endfor

" let g:python3_host_prog = '/usr/local/var/pyenv/shims/python3'
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

" local/share/
