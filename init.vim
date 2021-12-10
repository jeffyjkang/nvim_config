set autoindent				" indent new line
set clipboard=unnamedplus		" copy paste from outside
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
set smarttab				" connect with tab settings <BS>
set softtabstop=2                       " editing operations <BS>
set splitbelow				" horizontal splits auto below
set splitright				" vertical splits auto right
set tabstop=2				" two spaces for tab
syntax enable				" Syntax highlighting

call plug#begin("~/.vim/plugged")
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" theme
Plug 'preservim/nerdtree'
" file explorer
Plug 'ryanoasis/vim-devicons'
" icons
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" code completion
Plug 'airblade/vim-gitgutter'
" git mod indicator
Plug 'vim-airline/vim-airline'
" status/tabline
Plug 'mileszs/ack.vim'
" pattern finder
Plug 'dense-analysis/ale'
" async lint engine
call plug#end()
" :PlugStatus
" :PlugInstall
" :PlugUpdate # plugs
" :PlugClean # remove
" :PlugUpgrade # vim-plug
