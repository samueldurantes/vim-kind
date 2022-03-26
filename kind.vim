" Vim syntax file
" Language: Kind 

" Usage Instructions
" Put this file in .vim/syntax/kind.vim
" and add in your .vimrc file the next line:
" autocmd BufRead,BufNewFile *.kind set filetype=kind

if exists("b:current_syntax")
  finish
endif

" Language keywords
syntax keyword kindKeywords let open case with for in as switch type if then else def while

" Comments
syntax region kindCommentLine start="//" end="$"

" Type
syntax match kindTypeNames "\<[A-Z][a-zA-Z0-9_']*\>"

" Number literals
syntax region kindNumber start=/\s\d/ skip=/\d/ end=/\s/

" Strings literals
syntax region kindString start=/\v"/ skip=/\v\\./ end=/\v"/

" Set highlights
highlight default link kindKeywords Keyword
highlight default link kindCommentLine Comment
highlight default link kindTypeNames Type
highlight default link kindNumber Number
highlight default link kindString String
