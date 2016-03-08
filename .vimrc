" set backup
" set textwidth=75
set autoindent
set backspace=2
set cmdheight=2
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set encoding=utf-8
set expandtab
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,
set hidden
set history=500
set hlsearch
set icon
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set linebreak
set listchars=precedes:$,extends:$,tab:>-,trail:.,eol:<
set nonumber
set printheader=%<%F%=Seite\ %N
set printoptions=left:10pc,right:10pc,top:5pc,bottom:5pc,number:y
set report=0
set ruler
set scrolloff=1
set shiftwidth=4
set shortmess=aoOs
set showbreak=\ \|
set showcmd
set showmatch
set showmode
set sidescroll=5
set smartcase
set smartindent
set softtabstop=4
set tabstop=4
set title
set titleold=""
set ttyfast
set whichwrap=<,>,h,l,[,]
set wildignore=*.o,*.obj,*.exe,*~,moc_*
set wildmenu
set wildmode=list:longest,full
set wrap

syntax on
filetype on
au BufNewFile,BufRead *.pm  set filetype=perl
au BufNewFile,BufRead *.ino set filetype=arduino
autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab

" mark spaces at eol as error
match ErrorMsg '\s\+$'
" mark lines > 90 length
" match ErrorMsg '\%>90v.\+'

colorscheme delek

syntax on

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/kballard/vim-swift.git'
Plug 'https://github.com/junegunn/vim-easy-align.git'
Plug 'https://github.com/vim-perl/vim-perl.git'
Plug 'https://github.com/4Evergreen4/vim-hardy.git'
Plug 'https://github.com/jplaut/vim-arduino-ino.git'
Plug 'https://github.com/ekalinin/Dockerfile.vim.git'
Plug 'https://github.com/plasticboy/vim-markdown.git'
Plug 'https://github.com/vim-scripts/Conque-Shell.git'
Plug 'https://github.com/edkolev/tmuxline.vim'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
call plug#end()

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:vim_markdown_folding_disabled = 1

let g:airline#extensions#tmuxline#enabled = 0

let g:airline_theme='papercolor'

