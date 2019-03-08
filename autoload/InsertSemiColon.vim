function! InsertSemiColon#insert()
    let line_num = len(getline(0, '$'))
    echo line_num
endfunction
