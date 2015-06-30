function s:DetectRebol()
  if did_filetype()
    return
  end
  if getline(1) =~# '^#!.*\<rebol\>'
    setf rebol
  endif
endfunction

au BufRead,BufNewFile *.reb setf rebol
au BufRead,BufNewFile * call s:DetectRebol()
