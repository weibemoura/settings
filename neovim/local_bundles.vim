"*****************************************************************************
"" Plug install packages
"*****************************************************************************
Plug 'sbdchd/neoformat'
Plug 'dracula/vim'

call plug#end()

"*****************************************************************************
"" Custom configs
"*****************************************************************************
" neoformat
let g:neoformat_run_all_formatters = 1
let g:neoformat_enabled_python = ['yapf', 'autopep8']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
let no_buffers_menu=1
if !exists('g:not_finish_vimplug')
  set termguicolors
  colorscheme dracula
endif
