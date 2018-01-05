call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim'
Plug 'Shougo/neco-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'
Plug 'neomake/neomake'
Plug 'jaawerth/neomake-local-eslint-first'
Plug 'andreshazard/vim-freemarker'
Plug 'sheerun/vim-polyglot'

call plug#end()


syntax on
color dracula
set autoindent
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set cursorline
set nowrap

let g:mapleader = "\<space>"
nnoremap <leader>f gg=G
nnoremap <silent><c-p> :Files<cr>
nnoremap <leader><enter> :Buffers<cr>
nnoremap <leader>/ :Ag<cr>
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

let g:neomake_open_list = 2
let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '⚠', 'texthl': 'NeomakeWarningSign'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_typescript_enabled_makers = ['tslint']
let g:neomake_scss_enabled_makers = ['stylelint']

let g:neomake_scss_stylelint_maker = {
      \ 'errorformat':
      \ '%+P%f,' .
      \ '%*\s%l:%c %t %m,' .
      \ '%-Q'
      \ }

function! ESLintFix()
  silent execute '!'.nrun#Which('eslint') '--fix %'
  edit! %
  Neomake
endfunction

let g:formatdef_eslint = 'ESLintFix()'
let g:formatters_javascript = ['eslint']

let g:formatdef_stylefmt = '"stylefmt"'
let g:formatters_scss = ['stylefmt']
augroup fileSave
  autocmd!
augroup END
autocmd fileSave BufWritePost * Neomake

set langmenu=en_US.UTF-8
language en_US
