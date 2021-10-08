" converts tabs to spaces
set expandtab

" indents with 4 spaces
set tabstop=4

" visual (un)indent is 4 spaces
set shiftwidth=4

" highlights search
set hlsearch

" highlights while searching
set incsearch

" shows line numbers
set number

" text coloring
syntax on

" vv goes to esc in insert
imap vv <esc>
vmap vv <esc>
 
"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"Clear search highlight by pressing F4
nnoremap <F4> :noh<return><esc>

"Restore cursor to last position
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
