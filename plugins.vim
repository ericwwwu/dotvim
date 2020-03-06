filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'skielbasa/vim-material-monokai'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'


" Run your favorite search tool from Vim, with an enhanced results list.
" This plugin was designed as a Vim frontend for the programmer's search tool ack. ack can be used as a replacement for 99% of the uses of grep. The plugin allows you to search with ack from within Vim and shows the results in a split window.
" But here's a little secret for the Vim-seasoned: it's just a light wrapper for Vim's grepprg and the quickfix window for match results. This makes it easy to integrate with your own Vim configuration and use existing knowledge of core features. It also means the plugin is flexible to use with other search tools.
" install ack-grep by $sudo apt install ack-grep
Plugin 'mileszs/ack.vim'




Plugin 'skwp/greplace.vim'
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-commentary'
" Plugin 'kana/vim-textobj-user'
" Plugin 'kana/vim-textobj-entire'
" Plugin 'posva/vim-vue'
Plugin 'Chiel92/vim-autoformat'

Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'


" All of your Plugins must be added before the following line
call vundle#end()            " required
autocmd Filetype py setl shiftwidth=2
filetype plugin indent on    " required
