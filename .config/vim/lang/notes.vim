syntax enable

set conceallevel=3
set concealcursor=
set wrap
set breakindent

" syn region notesOpenBracket matchgroup=Comment start="\\" end="{" contained
" syn region notesCloseBracket matchgroup=Comment start="\\" end="}" contained
syn match notesCloseBracket /"\\\\@<={/ contained

syn region notesTitle start="\(^\)\@<=[^ ^\t]" end="$" contains=ALL
syn region notesSubtitle start="\(^\t\)\@<=[^ ^\t]" end="$" contains=ALL
syn region notesText start="\(^\t\t\)\@<=[^ ^\t]" end="$" contains=ALL
syn region notesSubtext start="\(^\t\t\t\)\@<=[^ ^\t]" end="$" contains=ALL
syn region notesDetail start="\(^\t\t\t\t\)\@<=[^ ^\t]" end="$" contains=ALL

syn region notesHighlight matchgroup=Comment start="{" end="}" end="$" concealends contained contains=ALL
syn region notesBold matchgroup=Comment start="\[" end="\]" end="$" concealends contained contains=ALL
" syn region notesComment start="(" end=")" end="$" contained contains=ALL
" syn match notesComment /([^)]*)/ contained


" Dates and Times
"---------------------------------------------------------------------------
" Matches 2018-03-12T or 12/03/2018 or 12/Mar/2018
" syn match notesDate '\d\{2,4}[-\/]\(\d\{2}\|Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\)[-\/]\d\{2,4}T\?'
" Matches Fri Jan 09 or Feb 11 or Apr  3
" syn match notesDate '\(\(Mon\|Tue\|Wed\|Thu\|Fri\|Sat\|Sun\) \)\?\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [0-9 ]\d'
" Entities
"---------------------------------------------------------------------------
" syn match notesUrl        'http[s]\?:\/\/[^\n|,; '"]\+'
" syn match notesDomain     /\v(^|\s)(\w|-)+(\.(\w|-)+)+\s/
" syn match notesUUID       '\w\{8}-\w\{4}-\w\{4}-\w\{4}-\w\{12}'
" syn match notesMD5        '\<[a-z0-9]\{32}\>'
" syn match notesIPV4       '\<\d\{1,3}\(\.\d\{1,3}\)\{3}\>'
" syn match notesIPV6       '\<\x\{1,4}\(:\x\{1,4}\)\{7}\>'
" syn match notesMacAddress '\<\x\{2}\(:\x\{2}\)\{5}'
" syn match notesFilePath   '\<\w:\\[^\n|,; ()'"\]{}]\+'
" syn match notesFilePath   '[^a-zA-Z0-9"']\@<=\/\w[^\n|,; ()'"\]{}]\+'
