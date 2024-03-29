set nocompatible              					"We want the latest Vim settings/options.
set mouse=a

so ~/.vim/plugins.vim

syntax enable

set encoding=utf-8
set backspace=indent,eol,start					"Make backspace behave like every other editor.
let mapleader = ','						          "The default leader is \, but a comma is much better.
set number
set ma
set noerrorbells visualbell t_vb=				"No damn bells!
set nofoldenable                        "disable folding
set nrformats=                          "using decimal instead of binary"


"--------------Visuals----------------"
set guifont=Fira_Code:h17					      "Use 256 colors. This is useful for Terminal Vim.
set linespace=10						            "Macvim-specific line-height.
set background=dark
" set termguicolors
colorscheme material-monokai

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set tabstop=4
set shiftwidth=4
set expandtab

"We'll fake a custom left padding for each window
hi LineNr guiBg=bg
"set foldcolumn=2
"hi foldcolumn guibg=bg


"get rig of ugly split borders.
hi vertsplit guifg=bg guibg=bg

"--------------Search----------------"
set hlsearch
set incsearch
set smartcase


"--------------Split Management----------------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"--------------Autoclose brackets----------"
" inoremap " ""<Left>
" inoremap ' ''<Left>
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O


"--------------Mappings----------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :e ~/.vim/vimrc<cr>

"Add simple hightlight removal.
nmap <leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle.
nmap <Leader><Leader>t :NERDTreeToggle<cr>

nmap <Leader>f :tag<space>





au BufRead,BufNewFile *.vue set filetype=html
au BufRead,BufNewFile *.tsx set filetype=typescript

"--------------Plugins----------------"

"/
"/ CtrlP
"/

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

" nmap <D-p> :CtrlP<cr>
" nmap <D-R> :CtrlPBufTag<cr>
" nmap <D-e> :CtrlPMRUFiles<cr>

"/
"/ NERDTree
"/

let NERDTreeHijackNetrw = 0

"/
"/ ultisnips
"/
" let g:UltiSnipsExpandTrigger="<tab>"



"/
"/ greplace.vim
"/
set grepprg=Ack							"we want to use ag for search
let g:grep_cmd_opts = '--noheading'


" ack
" let g:ackprg = "ack-grep -H --nocolor --nogroup --column"

" Open a new tab and search for something
" nmap <leader>a :tab split<CR>:Ack ""<Left>

" Immediately search for the word under the cursor in a new tab
" nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>





"/
"/ Commentary
"/
noremap <C-c> :Commentary<cr>



"/
"/ YouCompleteMe
"/
set completeopt=longest,menu "让vim的补全菜单行为与一般IDE一致（参考vimtip1228）
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" "回车即选中当前项

"上下左右键的行为 会显示其他信息
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"

"默认tab s-tab和自动补全冲突
let g:ycm_key_list_select_completion=['<c-n']
let g:ycm_key_list_previous_completion=['<c-p']
let g:ycm_confrm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字是否收入补全



"-------------Laravel-Specific----------"
" nmap <Leader>lr :e routes/web.php<cr>
" nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
" nmap <Leader><Leader>m :e app/Http/<cr>
"nmap <Leader><Leader>v :e resources/views/<cr>



"-------------irontunnel-Specific----------"
"nmap <Leader>ip :e package.json<cr>
"nmap <Leader>ii :e src/index.js<cr>
"nmap <Leader>ic :e src/config/<cr>
"nmap <Leader>ih :e src/helpers/<cr>
"nmap <Leader>is :e src/<cr>
"nmap <Leader><Leader>m :e src/components/Mobile/<cr>
"nmap <Leader><Leader>e :e src/components/Mobile/End/<cr>
"nmap <Leader><Leader>s :e ~/.vim/snippets/javascript.snippets<cr>


"--------------Auto-Commands----------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END



"--------------fix cursor for windows terminal----------"
if &term =~ '^xterm'
   " normal mode
   let &t_EI .= "\<Esc>[0 q"
   " insert mode
   let &t_SI .= "\<Esc>[6 q"
endif

if &term =~ '^screen'
   " normal mode
   let &t_EI .= "\<Esc>[6 q"
   " insert mode
   let &t_SI .= "\<Esc>[6 q"
endif



