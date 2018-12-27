" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']


 " Separate virtual environments for Neovim, and only Neovim
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
let g:python3_host_prog = '/usr/local/var/pyenv/shims/python3'
"let g:python_host_prog = '/usr/local/var/pyenv/versions/neovim2/bin/python'
let g:ycm_python_binary_path = '/usr/local/var/pyenv/shims/python3'
 " If you have unwanted YCM SHUTDOWN, then suspect the interpreter
"let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'
"
"let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string<Paste>
let g:ycm_autoclose_preview_window_after_completion=1
