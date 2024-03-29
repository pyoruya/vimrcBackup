syntax on
color molokai
let g:molokai_original = 1
let g:rehash256 = 1

set sc                  " showcmd
set vb                  " visualbell
set cul
set number              " 좌측 라인 넘버 표시
set numberwidth=6       " 넘버 표시 공간의 너비
set autoindent          " 자동 들여쓰기
set cindent             " C style indent  
set smartindent
set shiftwidth=4        " 들여쓰기 간격
set tabstop=4           " tab 간격
set title               " 하단 편집 문서의 이름 표시
set ruler               " 하단부에 현재 커서의 위치를 표시
set expandtab           " tab을 space로 변경하여 저장
set hlsearch            " 검색 결과 강조
set incsearch           " 증가 방향으로 검색<F9>:q:
set nowrap              " 자동 줄 바꿈 사용하지 않음
set autowrite           " 다른 파일로 이동시 자동 저장
set wmnu                " tab 자동완성 시 가능한 목록을 보여줌
set showmatch           " 매칭되는 괄호를 보여줌
set bs=indent,eol,start " backspace key 사용
set autoread         
set nocompatible
set lines=50 columns=150

set syntax=c
"set syn=cpp_conditional
"hi cppUndefined ctermbg=gray

"set clipboard=unnamedplus   "vim 의 기본 클립보드가 system 클립보드로 변경
set tags=./tags,tags,../tags,../../tags;

filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'craigemery/vim-autotag'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/limelight.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'antlypls/vim-colors-codeschool'
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


"============ Installed Plugin Configuration ==========
nmap <leader>t :TagbarToggle<CR>
let g:tagbar_width=40
let g:tagbar_autofocus=1
let g:tagbar_autoclose=0
"let g:tagbar_iconchars
let g:tagbar_systemenc = 'utf-8'

nmap <F9> : NERDTreeToggle<CR>

"============== 주석 매크로 ==============
func! CmtOn()    "주석 on
    exe "'<,'>norm i//"
endfunc
func! CmtOff()    "주석 off
    exe "'<,'>norm 2x"
endfunc
vmap <c-c> <esc>:call CmtOn() <cr>
vmap <c-x> <esc>:call CmtOff() <cr>
nmap <c-c> <esc>v:call CmtOn() <cr>
nmap <c-x> <esc>v:call CmtOff() <cr>

let base16colorspace=256  " Access colors present in 256 colorspace
