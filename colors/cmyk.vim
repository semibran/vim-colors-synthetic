" Name:       cmyk.vim
" Version:    0.0.0
" Maintainer: github.com/semibran
" License:    The MIT License (MIT)

highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "cmyk"

if &background == "dark"
  let s:black   = { "cterm16": "0",  "cterm": "0",   "gui": "#000000" }
  let s:gray    = { "cterm16": "8",  "cterm": "235", "gui": "#5f5f5f" }
  let s:silver  = { "cterm16": "7",  "cterm": "231", "gui": "#d7d7d7" }
  let s:white   = { "cterm16": "15", "cterm": "15",  "gui": "#ffffff" }
  let s:yellow  = { "cterm16": "3",  "cterm": "222", "gui": "#ffd787" }
  let s:cyan    = { "cterm16": "6",  "cterm": "117", "gui": "#87ffd7" }
  let s:magenta = { "cterm16": "5",  "cterm": "177", "gui": "#d787ff" }
  let s:normal = s:silver
  let s:ignore = s:gray
  let s:bg     = s:black
else
  let s:gray    = { "cterm16": "8",  "cterm": "102", "gui": "#878787" }
  let s:silver  = { "cterm16": "7",  "cterm": "188", "gui": "#d7d7d7" }
  let s:white   = { "cterm16": "15", "cterm": "15",  "gui": "#ffffff" }
  let s:yellow  = { "cterm16": "3",  "cterm": "215", "gui": "#ffaf5f" }
  let s:cyan    = { "cterm16": "6",  "cterm": "85",  "gui": "#5fffaf" }
  let s:magenta = { "cterm16": "5",  "cterm": "135", "gui": "#af5fff" }
  let s:normal = s:gray
  let s:ignore = s:silver
  let s:bg     = s:white
endif

let s:keyword = s:magenta
let s:name = s:yellow
let s:value = s:cyan
let s:cursor = s:magenta
let s:match = s:cyan
let s:error = s:yellow

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

call s:h("Normal", { "fg": s:normal, "bg": s:bg })
hi! link Special Normal
hi! link Title   Normal

call s:h("MatchParen",   { "fg": s:match })
call s:h("Error",        { "fg": s:error })
call s:h("Visual",       { "fg": s:ignore, "bg": s:white })
call s:h("Cursor",       { "fg": s:bg, "bg": s:cursor })
call s:h("CursorLineNr", { "fg": s:bg, "bg": s:ignore })
call s:h("CursorLine",   {})

call s:h("Keyword", { "fg": s:keyword })
hi! link Statement Keyword
hi! link PreProc   Keyword

call s:h("Identifier", { "fg": s:name })
hi! link Type Identifier

call s:h("Constant", { "fg": s:value })
hi! link Number    Constant
hi! link Float     Constant
hi! link String    Constant
hi! link Character Constant

call s:h("NonText", { "fg": s:ignore })
hi! link SpecialKey NonText
hi! link Comment    NonText
hi! link LineNr     NonText

hi! link vimFunction      Keyword
hi! link vimHiBang        Keyword
hi! link vimFuncSID       Identifier
hi! link vimIsCommand     Identifier
hi! link vimUserFunc      Identifier
hi! link vimCommentString Comment

hi! link htmlTagName        Keyword
hi! link htmlSpecialTagName Keyword
hi! link htmlArg            Identifier

hi! link cssBraces           Normal
hi! link cssTagName          Keyword
hi! link cssPositioningProp  Identifier
hi! link cssBackgroundProp   Identifier
hi! link cssBoxProp          Identifier
hi! link cssUIProp           Identifier

hi! link sassClass        Keyword
hi! link sassCssAttribute Constant

hi! link jsStorageClass Keyword
hi! link jsFunction Keyword
hi! link jsExportDefault Keyword
hi! link jsModuleKeyword Identifier
hi! link jsFuncCall Identifier
hi! link jsGlobalObjects Identifier
hi! link jsGlobalNodeObjects Identifier
hi! link jsSpecial Constant
hi! link jsonKeyword Identifier

hi! link rubyInclude Keyword
hi! link rubyModule Keyword
hi! link rubyClass Keyword
hi! link rubyDefine Keyword
hi! link rubyDoBlock Keyword
hi! link rubyCurlyBlock Keyword
hi! link rubyMethodBlock Keyword
hi! link rubyRegexpAnchor Keyword
hi! link rubyRegexpQuantifier Keyword
hi! link rubyRegexpCharClass Keyword
hi! link rubySymbol Identifier
hi! link rubyInterpolation String

hi! link markdownBold String
hi! link markdownH1 Keyword
hi! link markdownH2 Keyword
hi! link markdownH3 Keyword
hi! link markdownH4 Keyword
hi! link markdownH5 Keyword
hi! link markdownH6 Keyword
hi! link markdownHeadingDelimiter Keyword
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownLinkText Identifier

hi! link cInclude Keyword
hi! link cStorageClass Keyword
hi! link cType Keyword
