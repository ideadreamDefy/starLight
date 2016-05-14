" 将下面配置文件加入到.vimrc文件中
set nocompatible " 必须
filetype off     " 必须

" 将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 使用Vundle管理插件，必须
Plugin 'gmarik/Vundle.vim'

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Define bundles via Github repos
Bundle 'christoomey/vim-run-interactive'
Bundle 'croaky/vim-colors-github'
Bundle 'danro/rename.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/vim-slim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ctags.vim'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/tComment'
Bundle "mattn/emmet-vim"
Bundle "scrooloose/nerdtree"
Bundle "Lokaltog/vim-powerline"
Bundle "godlygeek/tabular"
Bundle "msanders/snipmate.vim"
Bundle "jelera/vim-javascript-syntax"
Bundle "altercation/vim-colors-solarized"
Bundle "othree/html5.vim"
Bundle "xsbeats/vim-blade"
Bundle "Raimondi/delimitMate"
Bundle "groenewege/vim-less"
Bundle "evanmiller/nginx-vim-syntax"
Bundle "Lokaltog/vim-easymotion"
Bundle "tomasr/molokai"
Bundle "altercation/vim-colors-solarizeds"
Bundle 'EasyGrep'

if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

call vundle#end() " 必须
filetype plugin indent on " 必须

syntax on       支持语法高亮
set nu          显示行号
set nonu      不显示行号
set ai          设置自动缩进
set shiftwidth=4   设置自动缩进 4 个空格, 当然要设自动缩进先.
set sts=4          即设置 softtabstop 为 4. 输入 tab 后就跳了 4 格.
set tabstop=4      实际的 tab 即为 4 个空格, 而不是缺省的 8 个.
set expandtab      在输入 tab 后, vim 用恰当的空格来填充这个 tab.　　　    

"-------------------------------------------NERD_tree.vim--------------------->>
"设置快捷键"
nmap <F2> :NERDTreeToggle<cr>

"禁用所有与NERD_tree有关的命令"
"let loaded_nerd_tree=1 
"不显示指定的类型的文件"
"let NERDTreeIgnore=['/.vim$', '/~$'] 
"不显示隐藏文件(好像只在linux环境中有效)"
let NERDTreeShowHidden=0 
"排序"
let NERDTreeSortOrder=['//$','/.cpp$','/.c$', '/.h$', '/.py$', '/.lua$', '*'] 
"不分大小写排序"
let NERDTreeCaseSensitiveSort=0 
"设置窗口尺寸"
let NERDTreeWinSize=30
"是否显示行号"
"let NERDTreeShowLineNumbers=1
"是否显示书签"
"let NERDTreeShowBookmarks=1 
"打开文件后, 关闭NERDTrre窗口"
"let NERDTreeQuitOnOpen=1
"高亮NERDTrre窗口的当前行"
let NERDTreeHighlightCursorline=1
"-------------------------------------------NERD_tree.vim--------------------->>

"redo========================"

"-----------------------------------------bufExplorer.vim--------->>"
noremap zz :BufExplorer<CR>
"-----------------------------------------bufExplorer.vim--------->>"

" Color scheme
syntax on 
set t_Co=256  
set background=dark  
colorscheme Solarized


" Backspace deletes like most programs in insert mode
set backspace=2
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

set matchpairs+=<:>
set hlsearch