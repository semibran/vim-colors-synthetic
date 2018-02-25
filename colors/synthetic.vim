" Name:       synthetic.vim
" Version:    0.0.0
" Maintainer: github.com/semibran
" License:    The MIT License (MIT)

highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name="synthetic"

hi Normal          ctermfg=249
hi LineNr          ctermfg=234
hi MatchParen      ctermfg=255
hi Visual          ctermbg=233
hi NonText         ctermfg=234
hi SpecialKey      ctermfg=234
hi Constant        ctermfg=122
hi String          ctermfg=156
hi StringDelimiter ctermfg=156
hi Delimiter       ctermfg=156
hi Character       ctermfg=122
hi Boolean         ctermfg=122
hi Number          ctermfg=122
hi Float           ctermfg=122
hi Identifier      ctermfg=222
hi Function        ctermfg=222
hi Title           ctermfg=255
hi Statement       ctermfg=141
hi Conditional     ctermfg=141
hi Repeat          ctermfg=141
hi Label           ctermfg=222
hi Operator        ctermfg=141
hi Keyword         ctermfg=141
hi Comment         ctermfg=240
hi PreProc         ctermfg=222
hi Include         ctermfg=141
hi Type            ctermfg=222
hi StorageClass    ctermfg=141

hi htmlTagName        ctermfg=141
hi htmlSpecialTagName ctermfg=141

hi jsGlobalObjects     ctermfg=222
hi jsGlobalNodeObjects ctermfg=222
hi jsBuiltins          ctermfg=222
hi jsFunction          ctermfg=141
hi jsFuncName          ctermfg=222
hi jsFuncCall          ctermfg=222
hi jsGenerator         ctermfg=222

hi markdownCode             ctermfg=156
hi markdownH1               ctermfg=141
hi markdownH2               ctermfg=141
hi markdownH3               ctermfg=141
hi markdownH4               ctermfg=141
hi markdownH5               ctermfg=141
hi markdownH6               ctermfg=141
hi markdownHeadingDelimiter ctermfg=141
