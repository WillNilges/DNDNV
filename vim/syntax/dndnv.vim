" Vim syntax file
" Language: DNDNV syntax highlighting file
" Maintainer: Will Nilges
" Latest Revision: 21 June 2020

" Highlight when an enemy takes damage (Denoted with [])
syntax region enemyTakenDamage start=/\v\[/ skip=/\v\\./ end=/\v\]/
hi enemyTakenDamage cterm=bold ctermbg=11 ctermfg=0 guibg=LightYellow

" Highlight when an ally takes damage (Denoted with {})
syntax region allyTakenDamage start=/\v\{/ skip=/\v\\./ end=/\v\}/
hi allyTakenDamage cterm=bold ctermbg=red ctermfg=0 guibg=LightYellow
