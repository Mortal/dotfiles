setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,:///,://

nnoremap <silent> == :set opfunc=ClangFormat<CR>g@g@
nnoremap <silent> = :set opfunc=ClangFormat<CR>g@
vnoremap <silent> = :<C-U>call ClangFormat(visualmode(), 1)<CR>

function! ClangFormat(type, ...)
  if a:0  " Invoked from Visual mode, use '< and '> marks.
    '<,'> pyf ~/.vim/clang-format.py
  else
    '[,'] pyf ~/.vim/clang-format.py
  endif
endfunction
