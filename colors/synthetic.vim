" Name:       synthetic.vim
" Version:    0.0.0
" Maintainer: github.com/semibran
" License:    The MIT License (MIT)

highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "synthetic"

let s:black   = { "cterm16": "0",  "cterm": "0",   "gui": "#000000" }
let s:gray    = { "cterm16": "8",  "cterm": "8",   "gui": "#333333" }
let s:silver  = { "cterm16": "7",  "cterm": "7",   "gui": "#cccccc" }
let s:white   = { "cterm16": "15", "cterm": "15",  "gui": "#ffffff" }
let s:red     = { "cterm16": "1",  "cterm": "160", "gui": "#ff6666" }
let s:green   = { "cterm16": "2",  "cterm": "156", "gui": "#99ff99" }
let s:yellow  = { "cterm16": "3",  "cterm": "222", "gui": "#ffcc99" }
let s:purple  = { "cterm16": "5",  "cterm": "141", "gui": "#cc99ff" }
let s:cyan    = { "cterm16": "6",  "cterm": "158", "gui": "#99ffcc" }

function! s:h(group, style)
  execute "highlight" a:group
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
endfunction

call s:h("Normal",  { "fg": s:silver })
call s:h("Special", { "fg": s:silver })
call s:h("Title",   { "fg": s:silver })

call s:h("String",    { "fg": s:green })
call s:h("Character", { "fg": s:green })

call s:h("Number",   { "fg": s:cyan })
call s:h("Float",    { "fg": s:cyan })
call s:h("Constant", { "fg": s:cyan })

call s:h("Identifier", { "fg": s:yellow })
call s:h("Type",       { "fg": s:yellow })

call s:h("Keyword",   { "fg": s:purple })
call s:h("Statement", { "fg": s:purple })
call s:h("PreProc",   { "fg": s:purple })

call s:h("Error", { "bg": s:red })
call s:h("Todo",  { "fg": s:purple })

call s:h("LineNr",     { "fg": s:gray })
call s:h("Comment",    { "fg": s:gray })
call s:h("NonText",    { "fg": s:gray })
call s:h("SpecialKey", { "fg": s:gray })
call s:h("Visual",     { "bg": s:gray })
call s:h("MatchParen", { "fg": s:cyan })

call s:h("vimFunction",      { "fg": s:purple })
call s:h("vimFuncSID",       { "fg": s:yellow })
call s:h("vimUserFunc",      { "fg": s:yellow })
call s:h("vimIsCommand",     { "fg": s:yellow })
call s:h("vimCommentString", { "fg": s:gray })

call s:h("htmlTagName",        { "fg": s:purple })
call s:h("htmlSpecialTagName", { "fg": s:purple })
call s:h("htmlArg",            { "fg": s:yellow })

call s:h("cssTagName",         { "fg": s:purple })
call s:h("cssBraces",          { "fg": s:silver })
call s:h("cssBackgroundProp",  { "fg": s:yellow })
call s:h("cssPositioningProp", { "fg": s:yellow })
call s:h("cssBoxProp",         { "fg": s:yellow })
call s:h("cssUIProp",          { "fg": s:yellow })

call s:h("sassClass",        { "fg": s:purple })
call s:h("sassCssAttribute", { "fg": s:cyan })

call s:h("jsImport",            { "fg": s:purple })
call s:h("jsExport",            { "fg": s:purple })
call s:h("jsExportDefault",     { "fg": s:purple })
call s:h("jsFrom",              { "fg": s:purple })
call s:h("jsStorageClass",      { "fg": s:purple })
call s:h("jsFunction",          { "fg": s:purple })
call s:h("jsFuncCall",          { "fg": s:yellow })
call s:h("jsObjectProp",        { "fg": s:yellow })
call s:h("jsGlobalObjects",     { "fg": s:yellow })
call s:h("jsGlobalNodeObjects", { "fg": s:yellow })
call s:h("jsSpecial",           { "fg": s:cyan })

call s:h("jsonKeyword", { "fg": s:yellow })

call s:h("rubyInclude",          { "fg": s:purple })
call s:h("rubyModule",           { "fg": s:purple })
call s:h("rubyClass",            { "fg": s:purple })
call s:h("rubyDefine",           { "fg": s:purple })
call s:h("rubySymbol",           { "fg": s:yellow })
call s:h("rubyInterpolation",    { "fg": s:green })
call s:h("rubyDoBlock",          { "fg": s:purple })
call s:h("rubyCurlyBlock",       { "fg": s:purple })
call s:h("rubyMethodBlock",      { "fg": s:purple })
call s:h("rubyRegexpCharClass",  { "fg": s:purple })
call s:h("rubyRegexpQuantifier", { "fg": s:purple })
call s:h("rubyRegexpAnchor",     { "fg": s:purple })

call s:h("markdownH1",               { "fg": s:purple })
call s:h("markdownH2",               { "fg": s:purple })
call s:h("markdownH3",               { "fg": s:purple })
call s:h("markdownH4",               { "fg": s:purple })
call s:h("markdownH5",               { "fg": s:purple })
call s:h("markdownH6",               { "fg": s:purple })
call s:h("markdownHeadingDelimiter", { "fg": s:purple })
call s:h("markdownCode",             { "fg": s:green })
call s:h("markdownCodeDelimiter",    { "fg": s:green })
call s:h("markdownLinkText",         { "fg": s:yellow })
call s:h("markdownBold",             { "fg": s:green })

call s:h("cInclude",      { "fg": s:purple })
call s:h("cStorageClass", { "fg": s:purple })
call s:h("cType",         { "fg": s:purple })
