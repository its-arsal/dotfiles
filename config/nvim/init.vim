"""""""""""""""""""""""""""""""""""""""""""""""
""           Neovim config file
""    https://github.com/techyArsal/dotfiles
"""""""""""""""""""""""""""""""""""""""""""""""

"" Plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'ryanoasis/vim-devicons'
call plug#end()

"" Include Coc config
if (filereadable(expand("~/.config/nvim/coc-config.vim")))
  silent source ~/.config/nvim/coc-config.vim
endif

"" Basic stuff
colorscheme purify
set mouse=a
set number relativenumber
set scrolloff=5 sidescrolloff=5
"set cursorline cursorcolumn
set termguicolors
set wildmode=longest,list,full
set tabstop=4
set softtabstop=4
set expandtab
set nohls

"" Remember position of last edit and return on reopen
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"" Airline config
let g:airline_theme='purify'
let g:airline_powerline_fonts=1
let g:airline_inactive_collapse=1
let g:airline_skip_empty_sections=1
let g:airline_highlighting_cache=1

let g:NERDCreateDefaultMappings=0

"" set to 1, the vim will refresh markdown when save the buffer or
"" leave from insert mode, default 0 is auto refresh markdown as you edit or
"" move the cursor
"" default: 0
let g:mkdp_refresh_slow=0
"" specify browser to open preview page
"" default: ''
let g:mkdp_browser='firefox-developer-edition'
"" use a custom markdown style must be absolute path
"" like '/Users/username/markdown.css' or expand('~/markdown.css')
"let g:mkdp_markdown_css = ''

"" Temporary mapping for NERDCommenter
nmap ++ <plug>NERDCommenterToggle
vmap ++ <plug>NERDCommenterToggle

"" Basic key-bindings
let mapleader=" "
nnoremap <C-s> :source ~/.config/nvim/init.vim<CR>
nnoremap <A-z> :Files<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
