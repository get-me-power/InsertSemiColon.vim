function! InsertSemiColon#insert()
    "bufferの行数を取得
    let line_sum = len(getline(0, '$'))
    for line_num in range(line_sum)
        echo line_num
        let line = getline(line_num+1)
        echo line
        "patternを使ってsubstute
        "s/\(.*\)$/\1;/g
        "substitute(line, '.*', line.';', 'g')
        " setlineを用いることで末尾にセミコロンを追加
        call setline(line_num+1, line.';')
        " if文にカッコがあるかないかを判断することで必要の無い箇所にセミコロンを保管することを防止する
    endfor
endfunction
