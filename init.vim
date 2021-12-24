set autoindent          "indent new line
set clipboard=unnamedplus		" copy paste from outside
set cursorline          " highlight current line
set expandtab				" converts tabs to white space
set hlsearch				" highlight search
set ignorecase				" ignore case in search params
set incsearch				" incremental search
set mouse=a				" enable mouse
set nowrap				" long lines, one line
set number				" line numbers
set shiftwidth=2			" space for indentation
set showmatch				" show matching bracket
set showtabline				" display tab
set smartindent				" connect with indent settings <BS>
set softtabstop=2     " editing operations <BS>
set splitbelow				" horizontal splits auto below
set splitright				" vertical splits auto right
set tabstop=2				" two spaces for tab
set wildmode=longest,list "bash like auto completion
set wildmenu        " advanced auto completion
syntax enable				" Syntax highlighting

call plug#begin("~/.config/nvim/plugged")
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" theme
Plug 'preservim/nerdtree'
" file explorer
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" code completion
Plug 'airblade/vim-gitgutter'
" git mod indicator
Plug 'vim-airline/vim-airline'
" status/tabline
Plug 'dense-analysis/ale'
" async lint engine
Plug 'pangloss/vim-javascript'
" js syntax
Plug 'HerringtonDarkholme/yats.vim'
" ts syntax
Plug 'evanleck/vim-svelte', {'branch': 'main'}
" svelte syntax
Plug 'codechips/coc-svelte', {'do': 'npm install'}
" svelte code completion
Plug 'ryanoasis/vim-devicons'
" icons
Plug 'jiangmiao/auto-pairs'
" auto pair
Plug 'ap/vim-css-color'
" direct css colors in editor
call plug#end()
" :PlugStatus
" :PlugInstall
" :PlugUpdate # plugs
" :PlugClean # remove
" :PlugUpgrade # vim-plug

source $HOME/.config/nvim/autoload/plug.vim
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0
let g:svelte_preprocessors = ['typescript']
let NERDTreeShowHidden = 1
let g:tokyonight_style = "night"
colorscheme tokyonight
" for coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
" ** tab trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" for yats
set re=0

