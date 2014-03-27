" ----------
" Vim Config
" ----------

" Vundle (This must happen first.)
" --------

set nocompatible
filetype off                    " required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
" install? :BundleInstall
" update? :BundleInstall!

" original repos on github
Bundle 'vim-scripts/regreplop.vim'
Bundle 'mileszs/ack.vim'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'

Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" to consider
" - epmatsw/ag.vim
" - nelstrom/vim-textobj-rubyblock
" - matchit (do/end with %)
" - regreplop
" - fuzzyfinder
" - tabular
" - NERDcommenter (replace commentary)
" - 'kien/ctrlp.vim'
" TPOPE
" - endwise

syntax on                       " Highlight known syntaxes
filetype plugin indent on

" Map Leader
let mapleader = ","

" Source initialization files
" ---------------------------

runtime! init/**.vim

" Machine-local vim settings - keep this at the end
" --------------------------
silent! source ~/.vimrc.local
