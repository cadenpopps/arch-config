" Vim color file - cadenpopps

set background=dark
syntax reset
set t_Co=256
let g:colors_name = "cadenpopps"

"Light Blue - \lb - 189
"Light Grey - \lg - 102
"Dark Grey - \dg - 243
"Light Orange - \lo - 224
"Dark Orange - \do - 174
"Red - \r - 160

hi Normal ctermfg=189 ctermbg=none cterm=none
hi LineNr ctermfg=224 ctermbg=none cterm=none
hi LineNrAbove ctermfg=174 ctermbg=none cterm=none
hi LineNrBelow ctermfg=16 ctermbg=none cterm=none
hi CursorLineNr ctermfg=189 ctermbg=none cterm=reverse

"Comments
hi Comment ctermfg=243 ctermbg=none cterm=none


"Notes
hi notesTitle ctermfg=174 ctermbg=NONE cterm=italic
hi notesSubtitle ctermfg=224
hi notesText ctermfg=189
hi notesSubtext ctermfg=249
hi notesDetail ctermfg=245

hi notesHighlight ctermfg=189 ctermbg=240
hi notesBold cterm=bold
hi notesComment cterm=italic
" ctermfg=245

"Javascript
hi jsFuncCall ctermfg=224 ctermbg=none cterm=none
hi jsFuncName ctermfg=224 ctermbg=none cterm=none

hi jsThis ctermfg=189 ctermbg=none cterm=none
hi jsParen ctermfg=189 ctermbg=none cterm=none
hi jsBracket ctermfg=189 ctermbg=none cterm=none
hi jsVariableDef ctermfg=189 ctermbg=none cterm=none
hi jsObjectProp ctermfg=189 ctermbg=none cterm=none


" Values
hi jsString ctermfg=189 ctermbg=none cterm=none
hi jsNumber ctermfg=224 ctermbg=none cterm=none
hi jsBooleanTrue ctermfg=224 ctermbg=none cterm=none
hi jsBooleanFalse ctermfg=224 ctermbg=none cterm=none


" Noise
hi jsParens ctermfg=243 ctermbg=none cterm=none
hi jsFuncParens ctermfg=243 ctermbg=none cterm=none
hi jsFuncBraces ctermfg=243 ctermbg=none cterm=none
hi jsRepeatBraces ctermfg=243 ctermbg=none cterm=none
hi jsIfElseBraces ctermfg=243 ctermbg=none cterm=none
hi jsObjectBraces ctermfg=243 ctermbg=none cterm=none
hi jsClassBraces ctermfg=243 ctermbg=none cterm=none
hi jsSwitchBraces ctermfg=242 ctermbg=none cterm=none
hi jsBrackets ctermfg=242 ctermbg=none cterm=none
hi jsSwitchColon ctermfg=243 ctermbg=none cterm=none
hi jsComment ctermfg=243 ctermbg=none cterm=none
hi jsNoise ctermfg=243 ctermbg=none cterm=none
hi jsDot ctermfg=243 ctermbg=none cterm=none
hi jsReturn ctermfg=174 ctermbg=none cterm=none


"Syntastic
highlight link SyntasticError SpellBad
highlight link SyntasticWarning SpellCap
hi SyntasticError ctermfg=189 ctermbg=160 cterm=bold
hi SyntasticWarning ctermfg=none ctermbg=243 cterm=bold
hi qfFileName ctermfg=224 ctermbg=none cterm=bold
hi qfLineNr ctermfg=174 ctermbg=none cterm=bold
hi qfSeparator ctermfg=189 ctermbg=none cterm=bold


"JSON Specific
hi jsonBraces ctermfg=189 ctermbg=none cterm=none


"HTML Specific
hi htmlLink ctermfg=189 ctermbg=none cterm=none
hi htmlString ctermfg=224 ctermbg=none cterm=none
hi htmlTagName ctermfg=174 ctermbg=none cterm=none


"CSS Specific
hi cssNoise ctermfg=174 ctermbg=none cterm=none
hi cssColor ctermfg=none ctermbg=none cterm=none
hi cssTagName ctermfg=189 ctermbg=none cterm=none
hi cssPseudoClass ctermfg=none ctermbg=none cterm=none
hi cssPseudoClassID ctermfg=none ctermbg=none cterm=none
hi cssClassName ctermfg=none ctermbg=none cterm=none
hi cssClassNameDot ctermfg=none ctermbg=none cterm=none
hi cssBraces ctermfg=none ctermbg=none cterm=none
hi cssFunction ctermfg=224 ctermbg=none cterm=none
hi cssFunctionName ctermfg=224 ctermbg=none cterm=none
hi cssAtRule ctermfg=174 ctermbg=none cterm=none
hi cssAttrRegion ctermfg=224 ctermbg=none cterm=none
hi cssUIAttr ctermfg=none ctermbg=none cterm=none
hi cssPositioningAttr ctermfg=none ctermbg=none cterm=none
hi cssFontAttr ctermfg=none ctermbg=none cterm=none
hi cssTextAttr ctermfg=none ctermbg=none cterm=none
hi cssFlexibleBoxAttr ctermfg=none ctermbg=none cterm=none
hi cssBoxAttr ctermfg=none ctermbg=none cterm=none
hi cssTransitionAttr ctermfg=none ctermbg=none cterm=none
hi cssCommonAttr ctermfg=none ctermbg=none cterm=none
hi cssBorderAttr ctermfg=none ctermbg=none cterm=none
hi cssMultiColumnAttr ctermfg=none ctermbg=none cterm=none
hi cssDefinition ctermfg=189 ctermbg=none cterm=none
hi cssFontProp ctermfg=none ctermbg=none cterm=none
hi cssBoxProp ctermfg=none ctermbg=none cterm=none
hi cssPageProp ctermfg=none ctermbg=none cterm=none
hi cssTextProp ctermfg=none ctermbg=none cterm=none
hi cssPositioningProp ctermfg=none ctermbg=none cterm=none
hi cssKeyFrameProp ctermfg=none ctermbg=none cterm=none
hi cssMediaProp ctermfg=none ctermbg=none cterm=none
hi cssFlexibleBoxProp ctermfg=none ctermbg=none cterm=none
hi cssTransitionProp ctermfg=none ctermbg=none cterm=none
hi cssBorderProp ctermfg=none ctermbg=none cterm=none
hi cssUIProp ctermfg=none ctermbg=none cterm=none
hi cssMultiColumnProp ctermfg=none ctermbg=none cterm=none
hi cssTransformProp ctermfg=none ctermbg=none cterm=none
hi cssIEUIProp ctermfg=none ctermbg=none cterm=none
hi cssBackgroundProp ctermfg=none ctermbg=none cterm=none
hi cssInteractProp ctermfg=none ctermbg=none cterm=none


" Menu
hi Pmenu ctermfg=224 ctermbg=none cterm=reverse
hi PMenuSel ctermfg=174 ctermbg=none cterm=reverse
hi PMenuSbar ctermfg=none ctermbg=none cterm=none
hi PMenuThumb ctermfg=none ctermbg=none cterm=none

"Important
hi Structure ctermfg=174 ctermbg=none cterm=none
hi Directory ctermfg=48 ctermbg=none cterm=none
hi Tag ctermfg=176 ctermbg=none cterm=none
hi Constant ctermfg=174 ctermbg=none cterm=none
hi Type ctermfg=174 ctermbg=none cterm=none
hi Keyword ctermfg=174 ctermbg=none cterm=none
hi Function ctermfg=174 ctermbg=none cterm=none
hi Question ctermfg=220 ctermbg=none cterm=none
hi Operator ctermfg=174 ctermbg=none cterm=none
hi Boolean ctermfg=7 ctermbg=none cterm=none
hi String ctermfg=7 ctermbg=none cterm=none
hi Number ctermfg=174 ctermbg=none cterm=none
hi Character ctermfg=7 ctermbg=none cterm=none
hi Statement ctermfg=189 ctermbg=none cterm=none
hi Search ctermfg=224 ctermbg=59 cterm=none
hi Label ctermfg=174 ctermbg=none cterm=none
hi Debug ctermfg=176 ctermbg=none cterm=none
hi Float ctermfg=215 ctermbg=none cterm=none
hi Special ctermfg=224 ctermbg=none cterm=none
hi StorageClass ctermfg=174 ctermbg=none cterm=none
hi Conditional ctermfg=174 ctermbg=none cterm=none
hi SpecialChar ctermfg=176 ctermbg=238 cterm=none
hi Identifier ctermfg=174 ctermbg=none cterm=none
hi Title ctermfg=189 ctermbg=none cterm=none
hi Typedef ctermfg=174 ctermbg=none cterm=none
hi Error ctermfg=189 ctermbg=160 cterm=bold
hi WarningMsg ctermfg=189 ctermbg=188 cterm=bold


"Editor
hi MatchParen ctermfg=none ctermbg=none cterm=bold
hi Cursor ctermfg=238 ctermbg=224 cterm=none
hi VertSplit ctermfg=243 ctermbg=none cterm=none
hi Visual ctermfg=7 ctermbg=102 cterm=none
hi Folded ctermfg=224 ctermbg=none cterm=none
" hi StatusLine ctermfg=189 ctermbg=none cterm=none
" hi StatusLineNC ctermfg=none ctermbg=none cterm=none


"NerdTree
hi NERDTreeHelp ctermfg=102 ctermbg=none cterm=none
hi NERDTreeCWD ctermfg=174 ctermbg=none cterm=none
hi NERDTreeUp ctermfg=102 ctermbg=none cterm=none
hi NERDTreeDir ctermfg=189 ctermbg=none cterm=none
hi NERDTreeDirSlash ctermfg=189 ctermbg=none cterm=none
hi NERDTreeClosable ctermfg=189 ctermbg=none cterm=none
hi NERDTreeOpenable ctermfg=189 ctermbg=none cterm=none
hi NERDTreeFile ctermfg=224 ctermbg=none cterm=none
hi NERDTreeExecFile ctermfg=224 ctermbg=none cterm=none


"Diffs
hi Include ctermfg=66 ctermbg=none cterm=none
hi NonText ctermfg=0 ctermbg=none cterm=none
hi ErrorMsg ctermfg=15 ctermbg=167 cterm=none
hi vimBracket ctermfg=174 ctermbg=none cterm=none
hi vimOpenParen ctermfg=174 ctermbg=none cterm=none
hi vimParenSep ctermfg=174 ctermbg=none cterm=none
hi vimSep ctermfg=174 ctermbg=none cterm=none
hi Todo ctermfg=102 ctermbg=189 cterm=none
hi StatusLine ctermfg=189 ctermbg=none cterm=none
hi Delimiter ctermfg=176 ctermbg=none cterm=none
hi WarningMsg ctermfg=15 ctermbg=174 cterm=none
hi ModeMsg ctermfg=103 ctermbg=none cterm=none
hi Define ctermfg=66 ctermbg=none cterm=none
hi PreProc ctermfg=174 ctermbg=none cterm=none
hi MoreMsg ctermfg=103 ctermbg=none cterm=none
hi Exception ctermfg=189 ctermbg=none cterm=none
hi DiffText ctermfg=7 ctermbg=none cterm=none
hi DiffDelete ctermfg=7 ctermbg=none cterm=none
hi DiffChange ctermfg=7 ctermbg=none cterm=none
hi DiffAdd ctermfg=7 ctermbg=none cterm=none
hi SpecialKey ctermfg=135 ctermbg=none cterm=none
hi Repeat ctermfg=174 ctermbg=none cterm=none
hi Macro ctermfg=66 ctermbg=none cterm=none
hi Underlined ctermfg=172 ctermbg=none cterm=none
hi FillChars ctermfg=0
