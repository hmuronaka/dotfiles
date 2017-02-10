"function s:slim2xml()
"  let path = expand('%:t:r')
"  return path."xml"
"endfunction

autocmd BufWritePost *.slim w !slimrb -p 
