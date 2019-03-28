call plug#begin('~/.local/share/nvim/plugged')

" General
Plug 'tpope/vim-sensible'

" Navigation
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Autocompletion
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }  " A code-completion engine for Vim
Plug 'davidhalter/jedi-vim'  " Using the jedi autocompletion library for VIM. (python)

" Snippets
" Plug 'SirVer/ultisnips'  " The ultimate snippet solution for Vim: Snippet Engine
" Plug 'honza/vim-snippets'  " vim-snipmate default snippets: Snippet library
" Plug 'ervandew/supertab'  " Perform all your vim insert mode completions with Tab

" Python
Plug 'python-mode/python-mode', {'branch': 'develop'}

" Miscellaneous
" Plug 'mbbill/undotree'  " The undo history visualizer
" Plug 'w0rp/ale'  " Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration
Plug 'majutsushi/tagbar'  " Vim plugin that displays tags in a window, ordered by scope
" Plug 'jiangmiao/auto-pairs'  " Vim plugin, insert or delete brackets, parens, quotes in pair
" Plug 'vim-scripts/matchit.zip'  " extended % matching for HTML, LaTeX, and many other languages
" Plug 'godlygeek/tabular' " Vim script for text filtering and alignment
" Plug 'chase/vim-ansible-yaml'  " A vim plugin for syntax highlighting Ansible's common filetypes
" Plug 'rizzatti/dash.vim'  " Search Dash.app from Vim
Plug 'nathanaelkane/vim-indent-guides'  " A Vim plugin for visually displaying indent levels in code
Plug 'bling/vim-airline'  " lean & mean status/tabline for vim that's light as air
Plug 'scrooloose/nerdcommenter'  " Vim plugin for intensely orgasmic commenting
" Plug 'mileszs/ack.vim' " Vim plugin for the Perl module / CLI script 'ack' - used with ag(silver searcher)
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
" Plug 'bkad/CamelCaseMotion' " A vim script to provide CamelCase motion through words
" Plug 'tpope/vim-surround' " surround.vim: quoting/parenthesizing made simple
Plug 'tpope/vim-repeat'  " repeat.vim: enable repeating supported plugin maps with '.'

" Searching and moving
Plug 'Lokaltog/vim-easymotion'  " Vim motions on speed!
Plug 'haya14busa/incsearch.vim'  " Improved incremental searching for Vim
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'bronson/vim-visual-star-search'  " Start a * or # search from a visual block

" fzf has been pre-installed with brew, with auto-completion & key-bindings support
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
"
" Practical Vim page 29
" Plug 'kana/vim-textobj-user'  " Vim plugin: Create your own text objects
" Plug 'kana/vim-textobj-entire'  " Vim plugin: Text objects for entire buffer
" Plug 'tpope/vim-unimpaired'  " unimpaired.vim: Pairs of handy bracket mappings

" Modern Vim
" Plug 'tpope/vim-projectionist'  " projectionist.vim: Granular project configuration
" Plug 'tpope/vim-dispatch'  " dispatch.vim: Asynchronous build and test dispatcher

" Colorscheme
Plug 'flazz/vim-colorschemes'  " one colorscheme pack to rule them all!
Plug 'NLKNguyen/papercolor-theme'

" Git
Plug 'tpope/vim-git'  " Vim Git runtime files
Plug 'tpope/vim-fugitive'  " A Git wrapper so awesome, it should be illegal
Plug 'gregsexton/gitv'  " a wrapper around git log --graph
Plug 'mattn/webapi-vim'  " needed for gist-vim
Plug 'mattn/gist-vim'  " vimscript for gist

" Tmux
" Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'  " Seamless navigation between tmux panes and vim splits

" HTML autoclose
Plug 'alvan/vim-closetag'  " Auto close (X)HTML tags
Plug 'ap/vim-css-color'  " Preview colours in source code while editing
Plug 'mattn/emmet-vim'  " emmet for vim: provides support for expanding abbreviations similar to emmet

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 이 아래는 최대한 https://github.com/mathiasbynens/dotfiles 유지
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" To enable 256 colors in vim, put this your .vimrc before setting the colorscheme:
" https://github.com/morhetz/gruvbox/issues/85: Cannot find color scheme gruvbox
"
" Use dark theme
set background=dark 
" Use  truecolors
set termguicolors

set t_Co=256
" Enable syntax highlighting
syntax on
colorscheme PaperColor
"colorscheme gruvbox

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader(NerdComment등에 사용)
" Swap with reverse character search command (\ <-> ,)
let mapleader=","
noremap \ ,
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
" Disable swap files
set noswapfile

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Highlight current line
set cursorline
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings 관리
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
so ~/.vim/settings.vim