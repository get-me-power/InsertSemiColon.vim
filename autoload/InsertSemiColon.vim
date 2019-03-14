function! InsertSemiColon#insert()
    "bufferの行数を取得
    let line_sum = len(getline(0, '$'))
    for line_num in range(line_sum+1)
        let line = getline(line_num)
        "patternを使ってsubstute
        s/\(.+\)$/#1;/g
        echo line
    endfor
endfunction
