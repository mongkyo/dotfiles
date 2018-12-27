" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

 let g:ycm_autoclose_preview_window_after_completion=1

 " Separate virtual environments for Neovim, and only Neovim
" https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
let g:python3_host_prog = '/usr/local/var/pyenv/versions/neovim3/bin/python'
"let g:python_host_prog = '/usr/local/var/pyenv/versions/neovim2/bin/python'
let g:ycm_python_binary_path = '/usr/local/var/pyenv/versions/neovim3/bin/python'
 " If you have unwanted YCM SHUTDOWN, then suspect the interpreter
"let g:ycm_path_to_python_interpreter = '/usr/local/bin/python'
