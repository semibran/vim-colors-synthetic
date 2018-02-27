" Name:       synthetic.vim
" Version:    0.0.0
" Maintainer: github.com/semibran
" License:    The MIT License (MIT)

highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "synthetic"

let s:black  = { "cterm": "0",   "gui": "#000000" }
let s:gray   = { "cterm": "59",  "gui": "#5f5f5f" }
let s:silver = { "cterm": "231", "gui": "#d7d7d7" }
let s:white  = { "cterm": "15",  "gui": "#ffffff" }
let s:purple = { "cterm": "141", "gui": "#af87ff" }
let s:green  = { "cterm": "156", "gui": "#afff87" }
let s:yellow = { "cterm": "222", "gui": "#ffd787" }
let s:cyan   = { "cterm": "123", "gui": "#87ffff" }
let s:red    = { "cterm": "203", "gui": "#ff5f5f" }

let s:normal     = { "fg": s:silver, "bg": s:black }
let s:special    = { "fg": s:cyan }
let s:statement  = { "fg": s:purple }
let s:identifier = { "fg": s:yellow }
let s:constant   = { "fg": s:green }
let s:match      = { "fg": s:cyan }
let s:info       = { "fg": s:cyan }
let s:warning    = { "fg": s:black, "bg": s:yellow }
let s:error      = { "fg": s:white, "bg": s:red }
let s:inverse    = { "fg": s:black, "bg": s:silver }
let s:select     = { "fg": s:silver, "bg": s:gray }
let s:subtle     = { "fg": s:gray }
let s:hidden     = { "fg": s:black }
let s:italic     = { "fg": s:cyan, "cterm": "italic", "gui": "italic" }
let s:bold       = { "fg": s:cyan, "cterm": "bold", "gui": "bold" }
let s:none       = {}

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

call s:h("Normal", s:normal)
call s:h("Special", s:special)
call s:h("Statement", s:statement)
call s:h("Identifier", s:identifier)
call s:h("Constant", s:constant)
call s:h("NonText", s:subtle)
call s:h("MatchParen", s:match)
call s:h("MoreMsg", s:info)
call s:h("WarningMsg", s:warning)
call s:h("Error", s:error)
call s:h("Visual", s:select)
call s:h("Cursor", s:inverse)
call s:h("CursorLine", s:none)
call s:h("EndOfBuffer", s:hidden)
call s:h("Pmenu", s:select)
call s:h("PmenuSel", s:inverse)
call s:h("htmlItalic", s:italic)
call s:h("htmlBold", s:bold)

hi! link Function Special
hi! link Title Special
hi! link Keyword Statement
hi! link PreProc Statement
hi! link StorageClass Statement
hi! link Type Identifier
hi! link Number Constant
hi! link Float Number
hi! link String Constant
hi! link Character String
hi! link SpecialKey NonText
hi! link Comment NonText
hi! link LineNr NonText
hi! link CursorLineNr Normal
hi! link StatusLine Visual
hi! link StatusLineNC Normal
hi! link VisualNOS Visual

hi! link vimSep Normal
hi! link vimParenSep Normal
hi! link vimFunction Statement
hi! link vimHiBang Statement
hi! link vimOption Identifier
hi! link vimEnvvar Identifier
hi! link vimIsCommand Identifier
hi! link vimCommentTitle Identifier
hi! link vimUserFunc Function
hi! link vimFuncSID Function
hi! link vimFgBgAttrib Constant
hi! link vimCommentString Comment

hi! link htmlTagName Statement
hi! link htmlSpecialTagName Statement
hi! link htmlArg Identifier

hi! link cssPseudoClass Constant
hi! link cssPseudoClassId Constant
hi! link cssBraces Normal
hi! link cssTagName Statement
hi! link cssPositioningProp Identifier
hi! link cssBackgroundProp Identifier
hi! link cssBoxProp Identifier
hi! link cssUIProp Identifier

hi! link sassId Special
hi! link sassClass Special
hi! link sassProperty Identifier
hi! link sassCssAttribute Constant

hi! link jsStorageClass StorageClass
hi! link jsFunction Statement
hi! link jsExportDefault Statement
hi! link jsVariableDef Identifier
hi! link jsModuleKeyword Identifier
hi! link jsGlobalObjects Identifier
hi! link jsGlobalNodeObjects Identifier
hi! link jsObjectKey Identifier
hi! link jsObjectProp Identifier
hi! link jsFuncArgs Identifier
hi! link jsFuncCall Function
hi! link jsFuncName Function
hi! link jsObjectFuncName Function
hi! link jsOperator Function

hi! link jsonBraces Normal
hi! link jsonKeyword Identifier

hi! link rubyInclude Statement
hi! link rubyModule Statement
hi! link rubyClass Statement
hi! link rubyDefine Statement
hi! link rubyDoBlock Statement
hi! link rubyCurlyBlock Statement
hi! link rubyMethodBlock Statement
hi! link rubyRegexpAnchor Statement
hi! link rubyRegexpQuantifier Statement
hi! link rubyRegexpCharClass Statement
hi! link rubySymbol Identifier
hi! link rubyInterpolation String

hi! link markdownH1 Statement
hi! link markdownH2 Statement
hi! link markdownH3 Statement
hi! link markdownH4 Statement
hi! link markdownH5 Statement
hi! link markdownH6 Statement
hi! link markdownHeadingDelimiter Statement
hi! link markdownListMarker Statement
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownLinkText Identifier
