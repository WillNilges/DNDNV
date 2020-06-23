" Vim syntax file
" Language: DNDNV syntax highlighting file
" Maintainer: Will Nilges
" Latest Revision: 21 June 2020

" Highlight when an enemy takes damage (Denoted with [])
syntax region enemyTakenDamage start=/\v\[/ end=/\v\]/
hi enemyTakenDamage cterm=bold ctermbg=11 ctermfg=0 guibg=LightYellow

" Highlight when an ally takes damage (Denoted with {})
syntax region allyTakenDamage start=/\v\{/ end=/\v\}/
hi allyTakenDamage cterm=bold ctermbg=red ctermfg=0 guibg=LightYellow

" Allies heal (Denoted with \/)
syntax region allyHeals start=/\v\\/ end=/\v\//
hi allyHeals cterm=bold ctermbg=207 guibg=LightYellow

" Enemies heal (Denoted with ^^)
syntax region enemyHeals start=/\v\^/ end=/\v\^/
hi enemyHeals cterm=bold ctermbg=99 guibg=LightYellow

" Death, Downing, Stability, and Revival macros
" ent = entity
ab ent_die 💀
ab ent_slp 🌙
ab ent_rev 💗
ab ent_res 💗
ab ent_pass ✅
ab ent_fail ❌
"TODO: ent_leave?

" Highlight items, inventories, chests, anything that has "stuff" in it.
syntax region inventory start=/\v\<\=\=/ end=/\v\=\=\>/
hi inventory ctermbg=darkgray

" Highlight names, oh my god please highlight names.
syntax region introName start=/\v\[\[/ end=/\v\]\]/
hi introName cterm=bold ctermbg=darkgreen

" Highlight places, oh my god please highlight names.
syntax region introPlace start=/\v\[\(/ end=/\v\)\]/
hi introPlace cterm=bold ctermbg=lightgreen ctermfg=black


" When diplomacy fails...
syntax match battleStart '-- Battle Start! --' 
syntax match battleWon '-- Victory! --'
syntax match battleLost '-- Defeat! --'
hi battleStart cterm=bold ctermbg=white ctermfg=black
hi battleWon cterm=bold ctermbg=white ctermfg=black
hi battleLost cterm=bold ctermbg=white ctermfg=black

" Roll for it!
" Checks, saves, etc.
syntax match rollCheckAndSave '\v(\(\w*\ \-\>\ \d*\))'
hi rollCheckAndSave ctermbg=lightblue ctermfg=black

"Highlight pass and failure
syntax match rollPass 'PASS!'
hi rollPass cterm=bold ctermfg=green
syntax match rollFail 'FAIL!'
hi rollFail cterm=bold ctermfg=red

"And of course, if you were to get a REALLY good roll.
syntax match nat20 'NAT 20!'
hi nat20 cterm=bold ctermbg=3 ctermfg=white

"If you just want to make something stand out
syntax region dontMissThis start=/\v\(\++/ end=/\v\++\)/
hi dontMissThis cterm=bold

"Underline. I'd use it for knowledge that only I know.
syntax region dontMissThis2 start=/\v\(__/ end=/\v__\)/
hi dontMissThis2 cterm=underline

"Italicize. I'd use it for metaknowledge.
syntax region dontMissThis3 start=/\v\(\/\// end=/\v\/\/\)/
hi dontMissThis3 cterm=italic

"Strikethrough. I'd use it for dropping memes into my notes and/or stuff that
"was once known but perhaps retconned.
syntax region missThis start=/\v\(\-\-/ end=/\v\-\-\)/
hi missThis cterm=strikethrough
