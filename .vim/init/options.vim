set guifont=Inconsolata-dz\ for\ Powerline:h12
" set guifont=Menlo\ for\ Powerline:h12
" set guifont=Monaco\ for\ Powerline:h12
let g:Powerline_symbols = 'fancy'

set guioptions-=T  " no toolbar
set guioptions-=e  " no gui tab bar
set guioptions-=rL " no scrollbars
set visualbell     " Don't beep
set notimeout      " No command timeout
set showcmd

set expandtab
set tabstop=2
set autoindent
" set smarttab
set shiftwidth=2
set softtabstop=2
"set smartindent
set number
set numberwidth=4
set nowrap
set backspace=indent,eol,start

set wildmode=list:longest,list:full
set wildignore+=tags
set wildignore+=tmp/**
set wildignore+=public/uploads/**
set wildignore+=public/images/**
set wildignore+=vendor/**
set wildignore+=.git,*.rbc,*.class,.svn,*.png

" whitespace stuff
" set list listchars=tab:\ \ ,trail:·
set list " show whitespace
if has("gui_running")
  set listchars=trail:·
else
  set listchars=trail:~
endif

set showtabline=2  " Always show tab bar
set showmatch      " show matching brackets
set hidden         " allow hidden, unsaved buffers
set splitbelow     " add new window towards right
set splitright     " add new window towards bottom
set scrolloff=3    " scroll when the cursor is 3 lines from bottom
set cursorline     " highlight current line

" more details staus line
" set statusline=[%n]\ %f\ %m\ %y
" set statusline+=%{fugitive#statusline()} " Show git details"
" set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''} " Show RVM details"
" set statusline+=%w              " [Preview]
" set statusline+=%=              " Left/right separator
" set statusline+=%c,             " Cursor column
" set statusline+=%l/%L           " Cursor line/total lines

" GRB: Put useful info in status line
":set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
":hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

set laststatus=2   " always show staus line

set incsearch      " incremental search
set encoding=utf-8

" Remember more commands and search history
set history=1000

" Make searches case-sensitive only if they contain upper-case characters
set smartcase

" no prompt for file changes outside of vim
set autoread

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" show the cursor position all the time
set ruler

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  set hlsearch
endif

" Write all writeable buffers when changing buffers or losing focus.
" set autowriteall                " Save when doing various buffer-switching things.
" autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
if has("gui_running")
  set noballooneval
endif
