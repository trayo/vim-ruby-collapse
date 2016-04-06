" change if-else into Ternary
command! TER :call Ternary()
command! Ternary :call Ternary()
func! Ternary()
  exe "normal! mq"
  exe "normal! _dwJa? \<esc>"
  exe "normal! Jdea : \<esc>"
  exe "normal! JJde"
  exe "normal! `q"
endfunc

" regex to match the whole if-else
" if.\+\n.\+\nelse\n.\+\nend

" change Ternary into if-else
command! IFE :call IFE()
command! IfElse :call IFE()
func! IFE()
  exe "normal! mq"
  exe "normal! Iif \<esc>"
  exe "normal! f?Xs\<return>\<esc>"
  exe "normal! f:Xs\<return>\<esc>"
  exe "normal! Oelse\<esc>"
  exe "normal! joend\<esc>"
  exe "normal! `q"
endfunc


" change do-end into curly braces
command! C :call Curlify()
command! Curlify :call Curlify()
function! Curlify()
  exe "normal! mqV/end\<return>J"
  :s/ do / { /g
  :s/ end/ } /g
  exe "normal! `q"
endfunction


" change curly braces into do-end
command! B :call Blockify()
command! Blockify :call Blockify()
function! Blockify()
  exe "normal! mq"
  :s/ { / do /g
  exe "normal! f|;a\<return>\<esc>"
  :s/ }/end/g
  exe ":normal! /end\<return>i\<return>\<esc>"
  exe "normal! `q"
endfunction
