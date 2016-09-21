syntax on

" 折り返し無効
set nowrap

" タブの表示上の幅
set tabstop=2

" タブを半角スペースに変換
set expandtab

" 自動インデントに使われる空白の数
set shiftwidth=2

" タイトルをバッファ名に変更しない
set notitle

" ターミナル接続を高速化
set ttyfast

" 他で編集されたら再読み込み
set autoread

" クリップボードコピー
set clipboard=unnamed,autoselect

" 自動インデント
set noautoindent

" 改行時に入力された行の末尾にあわせて次の行のインデントを増減
set smartindent

" Unicodeで行末が変になる問題を解決
set ambiwidth=double

" バックアップを設定しない
set nobackup

" バックスペースで消せる有効範囲
set backspace=indent,eol,start

" 大文字で検索したら、大文字を検索
set smartcase

" カッコ対応をハイライト
set showmatch

" 検索結果をハイライトする
set hlsearch

" swapファイルの生成先
set directory=~/tmp

" ルーラー表示
set ruler

" 行番号を表示
set number

" エンコーディング設定
set encoding=utf-8

" ============== BIND ========================
map <Leader>l :!php -l %<CR>

" ============== プラグイン ===================
" unite
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>

" 入力モードで開始
let g:unite_enable_start_insert=1

" ファイル履歴の保存数
let g:unite_source_file_mru_limit = 200

" ESC2回でunite終了
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" vim-auto-colorscheme
"let g:auto_colorscheme_default = 'jellybeans'
"let g:auto_colorscheme_config = [
"\   ['~/project/codecamp-rails', 'molokai'],
"\ ]

" nerdtree
" 隠しファイルをデフォルトで表示させる
let g:NERDTreeShowHidden = 1

" vim-auto-colorscheme {{{
let g:auto_colorscheme_default = 'jellybeans'
let g:auto_colorscheme_config = [
\   ['^/Users/suzukihiroaki/project/codecamp-rails', 'molokai'],
\ ]

" emmet
let g:user_emmet_leader_key='<C-Y>'

" neobundle
 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'Shougo/unite.vim'

 NeoBundle 'scrooloose/nerdcommenter'
 NeoBundle 'scrooloose/nerdtree'   
 NeoBundle 'slim-template/vim-slim'   
 NeoBundle 'tpope/vim-rails'   
 NeoBundle 'saihoooooooo/vim-auto-colorscheme'
 NeoBundle 'motemen/git-vim'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'mattn/emmet-vim'

 " color scheme
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'tomasr/molokai'

 " ウィンドウサイズ変更
 NeoBundle 'simeji/winresizer'

 " Silver Searcherを使えるようにする @see
 " https://github.com/ggreer/the_silver_searcher/blob/master/doc/ag.1.md
 NeoBundle 'rking/ag.vim'

 " html5のタグに対応
 NeoBundle 'othree/html5.vim'

 " zoom
 NeoBundle 'vim-scripts/zoom.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


