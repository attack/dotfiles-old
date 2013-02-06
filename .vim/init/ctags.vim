let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:rails_ctags_arguments='--exclude=".git" --exclude="log"'

" ctags again with gemhome added
"map <leader>t :!/usr/local/bin/ctags -R --exclude=.git --exclude=log * `rvm gemhome`/*<CR>
"map <leader>T :!rdoc -f tags -o tags * `rvm gemhome` --exclude=.git --exclude=log

" CTags
"map <leader>rt :!ctags --extra=+f -R *<CR><CR>
"map <C-\> :tnext<CR>
