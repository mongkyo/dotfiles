let g:pymode_options_max_line_length = 180
let g:pymode_indent = 1

" Enable automatic virtualenv detection
let g:pymode_virtualenv = 1

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1

let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_folding = 0

let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0

let g:pymode_lint_on_write = 0