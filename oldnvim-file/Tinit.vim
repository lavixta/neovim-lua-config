set encoding=utf-8
set number relativenumber 
set noswapfile
set scrolloff=7 
set backspace=indent,eol,start 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set expandtab 
set autoindent 
set fileformat=unix 
source $HOME/.config/nvim/plug-config/fzf.vim 
source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/close-tag.vim
source $HOME/.config/nvim/plug-config/defx.rc.vim 
source $HOME/.config/nvim/plug-config/lsp-config.vim 
source $HOME/.config/nvim/plug-config/snippet.vim
luafile $HOME/.config/nvim/lua/plugins/compe-config.lua
luafile $HOME/.config/nvim/lua/lsp/server-lsp.lua






