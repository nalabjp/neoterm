aug neoterm_test_minitest
  au VimEnter,BufRead,BufNewFile *_test.rb
        \ if g:neoterm_test_use_lib == 'rake' |
        \   call neoterm#test#libs#add('rake') |
        \ endif
  au VimEnter *
        \ if filereadable('test/test_helper.rb') && g:neoterm_test_use_lib == 'rake' |
        \   call neoterm#test#libs#add('rake') |
        \ endif
aug END
