if exists('g:loaded_InsertSemiColon')
    finish
endif
let g:loaded_InsertSemiColon = 1

" define command

command! -bar InsertSemiColon call InsertSemiColon#insert()

" define autocommand 
augroup plugin-InsertSemiColon
    autocmd!
    autocmd BufWritePre,BufRead *.java call InsertSemiColon#insert()
augroup END
