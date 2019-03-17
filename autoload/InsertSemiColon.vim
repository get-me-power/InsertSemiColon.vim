function! InsertSemiColon#insert()
    let filetype = s:Filetype()
    if strlen(filetype) == ''
        echo '拡張子が.javaではありません'
    else
        "bufferの行数を取得
        let line_sum = len(getline(0, '$'))
        for line_num in range(line_sum)
            let line = getline(line_num+1)
            echo line
            "s/\(.*\)$/\1;/g
            "setlineを用いることで末尾にセミコロンを追加
            if match(line,";") == -1
                if match(line, "{") == -1 && match(line, "}") == -1
                    call setline(line_num+1, line.';')
                endif
            endif
        " if文にカッコがあるかないかを判断することで必要の無い箇所にセミコロンを保管することを防止する
        endfor
    endif
endfunction

"開くファイルを識別する関数
function! s:Filetype() abort
    if expand('%:e') ==# 'java'
        return expand('%')
    else
        return ''
    endif
endfunction

" Todo
" if文にカッコがあるかないかを判断することで必要の無い箇所
