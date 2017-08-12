set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line

" 超级Tab键
Plugin 'SuperTab'

" taglist插件
Bundle 'taglist.vim'
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1	"不同时显示多个文件的tag，只显示当前文件的
let Tlist_WinWidt =28		"设置taglist的宽度
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1 "在右侧窗口中显示taglist窗口
let Tlist_Use_Left_Windo =1 "在左侧窗口中显示taglist窗口

" NERDTree树形浏览
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeWinSize=30
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
	\ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" vim-gitgutter git修改提示
Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'

" 代码折叠
Plugin 'tmhedberg/SimpylFold'

" 超级搜索 Ctrl+P
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" vim-airline配置
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_section_warning='' "关闭警告显示
set laststatus=2
set t_Co=256

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

" 语法高亮
syntax on
syntax enable

" 行列显示设置
set number
" set cursorline "高亮显示当前行/列

" tab键设置
set tabstop=4
"set softtabstop=4
set shiftwidth=4
"set expandtab
"set smarttab

" 缩进设置
set autoindent
set cindent

" 搜索设置
set hlsearch
set incsearch
set ignorecase

" 允许折叠
set foldmethod=indent
set foldlevel=99

" leader key设置为逗号
let mapleader = ","

" NERD树快捷键 F3
map <F3> :NERDTreeToggle<CR>

" ctags快捷键 F4打开 F5生成tags
noremap <F4> :TlistToggle<CR>
noremap <F5> :!ctags -R<CR>

" 使用vim方向键来切换编辑窗口 Ctrl+H/J/K/L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim-airline buffer切换快捷键 TAB
nnoremap <TAB> :bn<CR>
