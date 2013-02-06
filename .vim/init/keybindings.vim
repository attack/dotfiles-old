" Keybindings
" -----------

" clear the search buffer when hitting space
:nnoremap <space> :nohlsearch<cr>

" sometimes I hold the shift too long ... just allow it
:command W w
:command Q q
:command Wq wq
:command WQ wq

" Search
" nmap <leader>s :%s/
" vmap <leader>s :s/

" Split screen
:noremap <leader>v :vsp<CR>
:noremap <leader>h :split<CR>

" Make current window the only one (within tab)
:noremap <leader>o :only<CR>

" Buffer next,previous (ctrl-{n,p})
:noremap <c-N> :bn<CR>
:noremap <c-P> :bp<CR>

" Move between screens
" map <leader>w   ^Ww
" map <leader>=   ^W=
" map <leader>j   ^Wj
" map <leader>k   ^Wk
nmap <C-j>      <C-w>j
nmap <C-k>      <C-w>k
nmap <C-h>      <C-w>h
nmap <C-l>      <C-w>l

" jj - The most intuitive way to get out of insert mode. Like a boss!
imap jj <Esc>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" misc shortcuts
imap <c-l> <space>=><space>
imap <c-c> <esc>
"map <Left> :echo "no!"<cr>
"map <Right> :echo "no!"<cr>
"map <Up> :echo "no!"<cr>
"map <Down> :echo "no!"<cr>

" Make Y consistent with D and C.
map Y y$
map <silent> <leader>y :<C-u>silent '<,'>w !pbcopy<CR>

" Search
nmap <Leader>s  :%s/
vmap <Leader>s  :s/

" Copy current file path to system pasteboard.
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" reload .vimrc
map <leader>rv :source ~/.vimrc<CR>

" Scroll faster.
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" File tree browser
map \ :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \| :NERDTreeFind<CR>

" Commentary (change default mappings)
xmap <leader>/  <Plug>Commentary
nmap <leader>/  <Plug>Commentary
nmap <leader>// <Plug>CommentaryLine

" Copy current file path to system pasteboard
" map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
" map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Disable middle mouse button (which is easy to hit by accident).
"map <MiddleMouse> <Nop>
"imap <MiddleMouse> <Nop>

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert
  map <D-CR> :set invfu<cr>
endif

" File Renaming (credit: garybernhardt)
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

" (credit: garybernhardt)
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
  " :normal! <<
  " :normal! ilet(:
  " :normal! f 2cl) {
  " :normal! A }
endfunction
:command! PromoteToLet :call PromoteToLet()
map <leader>p :PromoteToLet<cr>

noremap [<space> :call append(line(".")-1, repeat([''], 1))<CR>
noremap ]<space> :call append(line("."), repeat([''], 1))<CR>
