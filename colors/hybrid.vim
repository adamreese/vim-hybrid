scriptencoding utf-8

" File:       hybrid.vim
" Maintainer: Andrew Wong (w0ng)
" URL:        https://github.com/w0ng/vim-hybrid
" Modified:   27 Jan 2013 07:33 AM AEST
" License:    MIT

" Description: {{{
" ----------------------------------------------------------------------------
" The default RGB colour palette is taken from Tomorrow-Night.vim:
" https://github.com/chriskempson/vim-tomorrow-theme
"
" The reduced RGB colour palette is taken from Codecademy's online editor:
" https://www.codecademy.com/learn
"
" The syntax highlighting scheme is taken from jellybeans.vim:
" https://github.com/nanotech/jellybeans.vim
"
" The is code taken from solarized.vim:
" https://github.com/altercation/vim-colors-solarized

" }}}
" Requirements And Recommendations: {{{
" ----------------------------------------------------------------------------
" Requirements
"   - gVim 7.3+ on Linux, Mac and Windows.
"   - Vim 7.3+ on Linux and Mac, using a terminal that supports 256 colours.
"
" Due to the limited 256 palette, colours in Vim and gVim will still be slightly
" different.
"
" In order to have Vim use the same colours as gVim (the way this colour scheme
" is intended), it is recommended that you define the basic 16 colours in your
" terminal.
"
" For Linux users (rxvt-unicode, xterm):
"
" 1.  Add the default palette to ~/.Xresources:
"
"         https://gist.github.com/3278077
"
"     or alternatively, add the reduced contrast palette to ~/.Xresources:
"
"         https://gist.github.com/w0ng/16e33902508b4a0350ae
"
" 2.  Add to ~/.vimrc:
"
"         let g:hybrid_custom_term_colors = 1
"         let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
"         colorscheme hybrid
"
" For OSX users (iTerm):
"
" 1.  Import the default colour preset into iTerm:
"
"         https://raw.githubusercontent.com/w0ng/dotfiles/master/iterm2/hybrid.itermcolors
"
"     or alternatively, import the reduced contrast color preset into iTerm:
"
"         https://raw.githubusercontent.com/w0ng/dotfiles/master/iterm2/hybrid-reduced-contrast.itermcolors
"
" 2.  Add to ~/.vimrc:
"
"         let g:hybrid_custom_term_colors = 1
"         let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
"         colorscheme hybrid

" }}}
" Initialisation: {{{
" ----------------------------------------------------------------------------

hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hybrid'

" }}}
" GUI And Cterm Palettes: {{{
" ----------------------------------------------------------------------------

let s:palette = {'gui' : {} , 'cterm' : {}}

if exists('g:hybrid_reduced_contrast') && g:hybrid_reduced_contrast == 1
  let s:gui_background = '#232c31'
  let s:gui_selection  = '#425059'
  let s:gui_line       = '#2d3c46'
  let s:gui_comment    = '#6c7a80'
else
  let s:gui_background = '#1d1f21'
  let s:gui_selection  = '#373b41'
  let s:gui_line       = '#282a2e'
  let s:gui_comment    = '#707880'
endif

let s:palette.gui.background = s:gui_background
let s:palette.gui.foreground = '#c5c8c6'
let s:palette.gui.selection  = s:gui_selection
let s:palette.gui.line       = s:gui_line
let s:palette.gui.comment    = s:gui_comment
let s:palette.gui.red        = '#cc6666'
let s:palette.gui.orange     = '#de935f'
let s:palette.gui.yellow     = '#f0c674'
let s:palette.gui.green      = '#b5bd68'
let s:palette.gui.aqua       = '#8abeb7'
let s:palette.gui.blue       = '#81a2be'
let s:palette.gui.purple     = '#b294bb'
let s:palette.gui.window     = '#303030'
let s:palette.gui.darkcolumn = '#23252b'
let s:palette.gui.addbg      = '#5F875F'
let s:palette.gui.addfg      = '#d7ffaf'
let s:palette.gui.changebg   = '#5F5F87'
let s:palette.gui.changefg   = '#d7d7ff'
let s:palette.gui.delbg      = '#cc6666'
let s:palette.gui.darkblue   = '#00005f'
let s:palette.gui.darkcyan   = '#005f5f'
let s:palette.gui.darkred    = '#5f0000'
let s:palette.gui.darkpurple = '#5f005f'

if exists('g:hybrid_custom_term_colors') && g:hybrid_custom_term_colors == 1
  let s:cterm_foreground = '15'  " White
  let s:cterm_selection  = '8'   " DarkGrey
  let s:cterm_line       = '0'   " Black
  let s:cterm_comment    = '7'   " LightGrey
  let s:cterm_red        = '9'   " LightRed
  let s:cterm_orange     = '3'   " DarkYellow
  let s:cterm_yellow     = '11'  " LightYellow
  let s:cterm_green      = '10'  " LightGreen
  let s:cterm_aqua       = '14'  " LightCyan
  let s:cterm_blue       = '12'  " LightBlue
  let s:cterm_purple     = '13'  " LightMagenta
  let s:cterm_delbg      = '9'   " LightRed
else
  let s:cterm_foreground = '250'
  let s:cterm_selection  = '237'
  let s:cterm_line       = '235'
  let s:cterm_comment    = '243'
  let s:cterm_red        = '167'
  let s:cterm_orange     = '173'
  let s:cterm_yellow     = '221'
  let s:cterm_green      = '143'
  let s:cterm_aqua       = '109'
  let s:cterm_blue       = '110'
  let s:cterm_purple     = '139'
  let s:cterm_delbg      = '167'
endif

let s:palette.cterm.background = '234'
let s:palette.cterm.foreground = s:cterm_foreground
let s:palette.cterm.window     = '236'
let s:palette.cterm.selection  = s:cterm_selection
let s:palette.cterm.line       = s:cterm_line
let s:palette.cterm.comment    = s:cterm_comment
let s:palette.cterm.red        = s:cterm_red
let s:palette.cterm.orange     = s:cterm_orange
let s:palette.cterm.yellow     = s:cterm_yellow
let s:palette.cterm.green      = s:cterm_green
let s:palette.cterm.aqua       = s:cterm_aqua
let s:palette.cterm.blue       = s:cterm_blue
let s:palette.cterm.purple     = s:cterm_purple
let s:palette.cterm.darkcolumn = '234'
let s:palette.cterm.addbg      = '65'
let s:palette.cterm.addfg      = '193'
let s:palette.cterm.changebg   = '60'
let s:palette.cterm.changefg   = '189'
let s:palette.cterm.delbg      = s:cterm_delbg
let s:palette.cterm.darkblue   = '17'
let s:palette.cterm.darkcyan   = '24'
let s:palette.cterm.darkred    = '52'
let s:palette.cterm.darkpurple = '53'

" }}}
" Formatting Options: {{{
" ----------------------------------------------------------------------------
let s:none   = 'NONE'
let s:t_none = 'NONE'
let s:n      = 'NONE'
let s:c      = ',undercurl'
let s:r      = ',reverse'
let s:s      = ',standout'
let s:b      = ',bold'
let s:u      = ',underline'
let s:i      = ',italic'

" }}}
" Highlighting Primitives: {{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = 's:' . a:hi_elem . '_' . a:field " s:bg_comment
  let l:gui_assign = 'gui'.a:hi_elem.'='.s:palette.gui[a:field] " guibg=...
  let l:cterm_assign = 'cterm'.a:hi_elem.'='.s:palette.cterm[a:field] " ctermbg=...
  exe 'let ' . l:vname . ' = '' ' . l:gui_assign . ' ' . l:cterm_assign . ''''
endfunction

let s:bg_foreground = ''
let s:bg_background = ''
let s:bg_selection = ''
let s:bg_line = ''
let s:bg_comment = ''
let s:bg_red = ''
let s:bg_orange = ''
let s:bg_yellow = ''
let s:bg_green = ''
let s:bg_aqua = ''
let s:bg_blue = ''
let s:bg_purple = ''
let s:bg_window = ''
let s:bg_darkcolumn = ''
let s:bg_addbg = ''
let s:bg_addfg = ''
let s:bg_changebg = ''
let s:bg_changefg = ''
let s:bg_delbg = ''
let s:bg_darkblue = ''
let s:bg_darkcyan = ''
let s:bg_darkred = ''
let s:bg_darkpurple = ''

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'window')
call s:build_prim('bg', 'darkcolumn')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')
call s:build_prim('bg', 'darkblue')
call s:build_prim('bg', 'darkcyan')
call s:build_prim('bg', 'darkred')
call s:build_prim('bg', 'darkpurple')

let s:fg_foreground = ''
let s:fg_background = ''
let s:fg_selection = ''
let s:fg_line = ''
let s:fg_comment = ''
let s:fg_red = ''
let s:fg_orange = ''
let s:fg_yellow = ''
let s:fg_green = ''
let s:fg_aqua = ''
let s:fg_blue = ''
let s:fg_purple = ''
let s:fg_window = ''
let s:fg_darkcolumn = ''
let s:fg_addbg = ''
let s:fg_addfg = ''
let s:fg_changebg = ''
let s:fg_changefg = ''
let s:fg_darkblue = ''
let s:fg_darkcyan = ''
let s:fg_darkred = ''
let s:fg_darkpurple = ''

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'window')
call s:build_prim('fg', 'darkcolumn')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')
call s:build_prim('fg', 'darkblue')
call s:build_prim('fg', 'darkcyan')
call s:build_prim('fg', 'darkred')
call s:build_prim('fg', 'darkpurple')

let s:fmt_none = ''
let s:fmt_bold = ''
let s:fmt_bldi = ''
let s:fmt_undr = ''
let s:fmt_undb = ''
let s:fmt_undi = ''
let s:fmt_curl = ''
let s:fmt_ital = ''
let s:fmt_stnd = ''
let s:fmt_revr = ''
let s:fmt_revb = ''

exe 'let s:fmt_none = '' gui=NONE'.          ' cterm=NONE'.          ' term=NONE'        .''''
exe 'let s:fmt_bold = '' gui=NONE'.s:b.      ' cterm=NONE'.s:b.      ' term=NONE'.s:b    .''''
exe 'let s:fmt_bldi = '' gui=NONE'.s:b.      ' cterm=NONE'.s:b.      ' term=NONE'.s:b    .''''
exe 'let s:fmt_undr = '' gui=NONE'.s:u.      ' cterm=NONE'.s:u.      ' term=NONE'.s:u    .''''
exe 'let s:fmt_undb = '' gui=NONE'.s:u.s:b.  ' cterm=NONE'.s:u.s:b.  ' term=NONE'.s:u.s:b.''''
exe 'let s:fmt_undi = '' gui=NONE'.s:u.      ' cterm=NONE'.s:u.      ' term=NONE'.s:u    .''''
exe 'let s:fmt_curl = '' gui=NONE'.s:c.      ' cterm=NONE'.s:c.      ' term=NONE'.s:c    .''''
exe 'let s:fmt_ital = '' gui=NONE'.s:i.      ' cterm=NONE'.s:i.      ' term=NONE'.s:i    .''''
exe 'let s:fmt_stnd = '' gui=NONE'.s:s.      ' cterm=NONE'.s:s.      ' term=NONE'.s:s    .''''
exe 'let s:fmt_revr = '' gui=NONE'.s:r.      ' cterm=NONE'.s:r.      ' term=NONE'.s:r    .''''
exe 'let s:fmt_revb = '' gui=NONE'.s:r.s:b.  ' cterm=NONE'.s:r.s:b.  ' term=NONE'.s:r.s:b.''''

let s:sp_none       = ''
let s:sp_foreground = ''
let s:sp_background = ''
let s:sp_selection  = ''
let s:sp_line       = ''
let s:sp_comment    = ''
let s:sp_red        = ''
let s:sp_orange     = ''
let s:sp_yellow     = ''
let s:sp_green      = ''
let s:sp_aqua       = ''
let s:sp_blue       = ''
let s:sp_purple     = ''
let s:sp_window     = ''
let s:sp_addbg      = ''
let s:sp_addfg      = ''
let s:sp_changebg   = ''
let s:sp_changefg   = ''
let s:sp_darkblue   = ''
let s:sp_darkcyan   = ''
let s:sp_darkred    = ''
let s:sp_darkpurple = ''

exe 'let s:sp_none       = '' guisp='. s:none                   .''''
exe 'let s:sp_foreground = '' guisp='. s:palette.gui.foreground .''''
exe 'let s:sp_background = '' guisp='. s:palette.gui.background .''''
exe 'let s:sp_selection  = '' guisp='. s:palette.gui.selection  .''''
exe 'let s:sp_line       = '' guisp='. s:palette.gui.line       .''''
exe 'let s:sp_comment    = '' guisp='. s:palette.gui.comment    .''''
exe 'let s:sp_red        = '' guisp='. s:palette.gui.red        .''''
exe 'let s:sp_orange     = '' guisp='. s:palette.gui.orange     .''''
exe 'let s:sp_yellow     = '' guisp='. s:palette.gui.yellow     .''''
exe 'let s:sp_green      = '' guisp='. s:palette.gui.green      .''''
exe 'let s:sp_aqua       = '' guisp='. s:palette.gui.aqua       .''''
exe 'let s:sp_blue       = '' guisp='. s:palette.gui.blue       .''''
exe 'let s:sp_purple     = '' guisp='. s:palette.gui.purple     .''''
exe 'let s:sp_window     = '' guisp='. s:palette.gui.window     .''''
exe 'let s:sp_addbg      = '' guisp='. s:palette.gui.addbg      .''''
exe 'let s:sp_addfg      = '' guisp='. s:palette.gui.addfg      .''''
exe 'let s:sp_changebg   = '' guisp='. s:palette.gui.changebg   .''''
exe 'let s:sp_changefg   = '' guisp='. s:palette.gui.changefg   .''''
exe 'let s:sp_darkblue   = '' guisp='. s:palette.gui.darkblue   .''''
exe 'let s:sp_darkcyan   = '' guisp='. s:palette.gui.darkcyan   .''''
exe 'let s:sp_darkred    = '' guisp='. s:palette.gui.darkred    .''''
exe 'let s:sp_darkpurple = '' guisp='. s:palette.gui.darkpurple .''''

" }}}
" Vim Highlighting: (see :help highlight-groups) {{{
" ----------------------------------------------------------------------------
exe 'hi! ColorColumn'     .s:fg_none       .s:bg_darkcolumn .s:fmt_none
exe 'hi! Conceal'         .s:fg_red        .s:bg_none       .s:fmt_none
"   Cursor"
"   CursorIM"
exe 'hi! CursorColumn'    .s:fg_none       .s:bg_darkcolumn .s:fmt_none
exe 'hi! CursorLine'      .s:fg_none       .s:bg_darkcolumn .s:fmt_none
exe 'hi! Directory'       .s:fg_blue       .s:bg_none       .s:fmt_none
exe 'hi! DiffAdd'         .s:fg_addfg      .s:bg_addbg      .s:fmt_none
exe 'hi! DiffChange'      .s:fg_changefg   .s:bg_changebg   .s:fmt_none
exe 'hi! DiffDelete'      .s:fg_background .s:bg_delbg      .s:fmt_none
exe 'hi! DiffText'        .s:fg_background .s:bg_blue       .s:fmt_none
exe 'hi! ErrorMsg'        .s:fg_background .s:bg_red        .s:fmt_none
exe 'hi! VertSplit'       .s:fg_selection  .s:bg_none       .s:fmt_none
exe 'hi! Folded'          .s:fg_comment    .s:bg_darkcolumn .s:fmt_none
exe 'hi! FoldColumn'      .s:fg_none       .s:bg_darkcolumn .s:fmt_none
exe 'hi! SignColumn'      .s:fg_none       .s:bg_none       .s:fmt_none
" IncSearch
exe 'hi! LineNr'          .s:fg_selection  .s:bg_none       .s:fmt_none
exe 'hi! CursorLineNr'    .s:fg_yellow     .s:bg_none       .s:fmt_none
exe 'hi! MatchParen'      .s:fg_background .s:bg_changebg   .s:fmt_undr
exe 'hi! ModeMsg'         .s:fg_green      .s:bg_none       .s:fmt_none
exe 'hi! MoreMsg'         .s:fg_green      .s:bg_none       .s:fmt_none
exe 'hi! NonText'         .s:fg_selection  .s:bg_none       .s:fmt_none
exe 'hi! Pmenu'           .s:fg_foreground .s:bg_selection  .s:fmt_none
exe 'hi! PmenuSel'        .s:fg_foreground .s:bg_selection  .s:fmt_revr
"   PmenuSbar"
"   PmenuThumb"
exe 'hi! Question'        .s:fg_green      .s:bg_none       .s:fmt_none
exe 'hi! Search'          .s:fg_background .s:bg_yellow     .s:fmt_none
exe 'hi! SpecialKey'      .s:fg_selection  .s:bg_none       .s:fmt_none
exe 'hi! SpellCap'        .s:fg_blue       .s:bg_darkblue   .s:fmt_undr
exe 'hi! SpellLocal'      .s:fg_aqua       .s:bg_darkcyan   .s:fmt_undr
exe 'hi! SpellBad'        .s:fg_red        .s:bg_darkred    .s:fmt_undr
exe 'hi! SpellRare'       .s:fg_purple     .s:bg_darkpurple .s:fmt_undr
exe 'hi! StatusLine'      .s:fg_comment    .s:bg_background .s:fmt_revr
exe 'hi! StatusLineNC'    .s:fg_window     .s:bg_comment    .s:fmt_revr
exe 'hi! TabLine'         .s:fg_foreground .s:bg_darkcolumn .s:fmt_revr
"   TabLineFill"
"   TabLineSel"
exe 'hi! Title'           .s:fg_yellow     .s:bg_none       .s:fmt_none
exe 'hi! Visual'          .s:fg_none       .s:bg_selection  .s:fmt_none
"   VisualNos"
exe 'hi! WarningMsg'      .s:fg_red        .s:bg_none       .s:fmt_none
exe 'hi! LongLineWarning' .s:fg_red        .s:bg_none       .s:fmt_none
" exe 'hi! WildMenu'        .s:fg_background .s:bg_yellow     .s:fmt_none

" Use defined custom background colour for terminal Vim.
if !has('gui_running') && exists('g:hybrid_custom_term_colors') && g:hybrid_custom_term_colors == 1
  let s:bg_normal = s:bg_none
else
  let s:bg_normal = s:bg_background
endif
exe 'hi! Normal'        .s:fg_foreground  .s:bg_normal      .s:fmt_none

" }}}
" Neovim Terminal Colors {{{
" ----------------------------------------------------------------------------
let g:terminal_color_0  = s:palette.gui.background " background gray
let g:terminal_color_8  = s:gui_comment " comment gray

let g:terminal_color_1  = s:palette.gui.red " red
let g:terminal_color_9  = s:palette.gui.red " dark red

let g:terminal_color_2  = s:palette.gui.green " green
let g:terminal_color_10 = g:terminal_color_2

let g:terminal_color_3  = s:palette.gui.yellow " yellow
let g:terminal_color_11 = s:palette.gui.orange " dark yellow (actually orange)

let g:terminal_color_4  = s:palette.gui.blue " blue
let g:terminal_color_12 = '#729fcf' " another shade of blue

let g:terminal_color_5  = s:palette.gui.purple " purple
let g:terminal_color_13 = g:terminal_color_5

let g:terminal_color_6  = s:palette.gui.aqua " aqua
let g:terminal_color_14 = s:palette.gui.darkcyan  " dark aqua

let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_15 = '#707880' " another shade of grade

" }}}
" Generic Syntax Highlighting: (see :help group-name) {{{
" ----------------------------------------------------------------------------
exe 'hi! Comment'         .s:fg_comment     .s:bg_none        .s:fmt_ital

exe 'hi! Constant'        .s:fg_red         .s:bg_none        .s:fmt_none
exe 'hi! String'          .s:fg_green       .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

exe 'hi! Identifier'      .s:fg_purple      .s:bg_none        .s:fmt_none
exe 'hi! Function'        .s:fg_yellow      .s:bg_none        .s:fmt_none

exe 'hi! Statement'       .s:fg_blue        .s:bg_none        .s:fmt_none
"   Conditional"
"   Repeat"
"   Label"
exe 'hi! Operator'        .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Keyword"
"   Exception"

exe 'hi! PreProc'         .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Include"
"   Define"
"   Macro"
"   PreCondit"

exe 'hi! Type'            .s:fg_orange      .s:bg_none        .s:fmt_none
"   StorageClass"
exe 'hi! Structure'       .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Typedef"

exe 'hi! Special'         .s:fg_green       .s:bg_none        .s:fmt_none
"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe 'hi! Underlined'      .s:fg_blue        .s:bg_none        .s:fmt_none

exe 'hi! Ignore'          .s:fg_none        .s:bg_none        .s:fmt_none

exe 'hi! Error'           .s:fg_red         .s:bg_darkred     .s:fmt_undr

exe 'hi! Todo'            .s:fg_addfg       .s:bg_none        .s:fmt_none

" Quickfix window highlighting
exe 'hi! qfLineNr'        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

" }}}
" Diff Syntax Highlighting: {{{
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
"   diffFile
exe 'hi! diffFile'        .s:fg_orange      .s:bg_none        .s:fmt_none
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
" hi! link diffRemoved Constant
exe 'hi! diffRemoved'     .s:fg_red         .s:bg_none        .s:fmt_none
"   diffChanged
" hi! link diffAdded Special
exe 'hi! diffAdded'       .s:fg_green       .s:bg_none        .s:fmt_none
"   diffLine
exe 'hi! diffLine'        .s:fg_purple      .s:bg_none        .s:fmt_none
"   diffSubname
"   diffComment

" }}}

exe 'hi! NeomakeErrorSign'   .s:fg_red         .s:bg_none .s:fmt_none

" Legal: {{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}
