" Options
set number
set relativenumber
syntax on
set pumheight=16

" Keyboard maps
" Tab/enter to autocomplete
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<cr>"

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes


" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Language parser/server
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting

" UltiSnips options
" Set trigger to not tab to avoid interfering with coc
let g:UltiSnipsExpandTrigger="<s-tab>"
