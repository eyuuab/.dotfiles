

" ~/.config/nvim/syntax/metta.vim
" Basic syntax highlighting for the Metta language

" --- Comments (start with ;) ---
syntax match mettaComment ";.*$"

" --- Keyword ---
syntax keyword mettaKeyword exec

" --- Strings (optional, if you ever use quotes) ---
syntax region mettaString start=/"/ end=/"/

" --- Numbers ---
syntax match mettaNumber "\v\d+"

" --- Variables ($something) ---
syntax match mettaVariable "\$[A-Za-z0-9_]\+"

" --- Punctuation (, ( )) ---
syntax match mettaPunct "[,()]"

" --- Highlight links (connect syntax groups to colors) ---
highlight link mettaComment Comment
highlight link mettaKeyword Keyword
highlight link mettaString String
highlight link mettaNumber Number
highlight link mettaVariable Identifier
highlight link mettaPunct Delimiter


