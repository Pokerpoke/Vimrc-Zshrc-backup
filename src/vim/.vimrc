set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" molokai主题
Plugin 'tomasr/molokai'
" 右侧目录结构
Plugin 'scrooloose/nerdtree'
" 代码提示
" Plugin 'Valloric/YouCompleteMe'
" 注释
Plugin 'scrooloose/nerdcommenter'
" 语法检查
Plugin 'scrooloose/syntastic'
" ctrlp
Plugin 'ctrlpvim/ctrlp.vim'
" 快速移动
Plugin 'easymotion/vim-easymotion'
" Dracula theme
Plugin 'dracula/vim'
" python代码缩进
Plugin 'vim-scripts/indentpython.vim'
" pep8代码风格检查
Plugin 'nvie/vim-flake8'
" 代码格式化
" Plugin 'Chiel92/vim-autoformat'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after this line

" F5 to open NERDTree
nmap <F5> :NERDTreeToggle<cr>

" 显示行号
" set nu

" 设置airline主题
let g:airline_theme='molokai'

" ctrl + p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1

" 设置缩进
set smartindent

" 语法高亮
syntax on

" solarized主题设置在终端下的设置
" let g:solarized_termcolors=256

" 设置背景色
set background=dark
" color dracula
color molokai

" 设置tab长度
set tabstop=4
set shiftwidth=4

"突出显示当前行"
set cursorline        

"突出显示当前列"
" set cursorcolumn        

" 显示匹配的括号
set showmatch

" 高亮搜索结果
set hlsearch
set incsearch

" split navigations 切换窗口布局
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" python代码pep8风格缩进
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" 支持utf-8编码
set encoding=utf-8

" python代码高亮
let python_highlight_all=1

" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch

" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
