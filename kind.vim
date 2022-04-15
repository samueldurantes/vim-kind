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
syntax keyword kindKeywords λ e let open case with for in as switch type if then else def while when pass

" Comments
syntax region kindCommentLine start="//" end="$"

" Buraco and reflection
syntax region kindString start='?' end='$'
syntax keyword kindString refl

"Number literals
syntax match kindNumber "\<[0-9]\+\>\|\<[0-9_]\+\>\|\<0[xX][0-9a-fA-F_]\+\>\|\<0[oO][0-7_]\+\>\|\<0[bB][10_]\+\>"

" Strings literals
syntax region kindString start=/\v"/ skip=/\v\\./ end=/\v"/

" Strings
syntax region kindString start='"' end='"'
syntax region kindString start='\'' end='\''

" Function
syntax region rFunction matchgroup=Function start="\(\(\a\|[.][._\a]\)[._\w]*\)\+\ *(" matchgroup=Function end=")" transparent 

" Specials
syntax keyword rSpecial nil cons zero succ pred true false

" Type
syntax match kindTypeNames "\<[A-Z][a-zA-Z0-9_']*\>" 

" Set highlights
highlight default link kindKeywords Keyword
highlight default link kindCommentLine Comment
highlight default link kindTypeNames Type
highlight default link kindNumber Number
highlight default link kindString String
highlight default link rFunction Function
highlight default link rSpecial Boolean
