set background=dark
if exists('g:colors_name')
hi clear
if exists('syntax_on')
syntax reset
endif
endif
let g:colors_name = 'lushwal'
highlight Normal guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight! link User Normal
highlight Bold guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=bold
highlight Boolean guifg=#DEA873 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Character guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight ColorColumn guifg=#C8B39D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Comment guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conceal guifg=#AB9E92 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight! link Whitespace Conceal
highlight Conditional guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Constant guifg=#DEA873 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Cursor guifg=#140F13 guibg=#F4E0CD guisp=NONE blend=NONE gui=NONE
highlight CursorColumn guifg=#C8B39D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=#AB9E92 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight Debug guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Delimiter guifg=#B5887D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#B48579 guibg=NONE guisp=#B48579 blend=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#DFAC90 guibg=NONE guisp=#DFAC90 blend=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#998082 guibg=NONE guisp=#998082 blend=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#FDC577 guibg=NONE guisp=#FDC577 blend=NONE gui=underline
highlight DiagnosticWarn guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=#DE9573 guibg=#AB9E92 guisp=NONE blend=NONE gui=bold
highlight! link DiffAdded DiffAdd
highlight DiffChange guifg=#E2C9B1 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#B48579 guibg=#AB9E92 guisp=NONE blend=NONE gui=bold
highlight! link DiffRemoved DiffDelete
highlight! link diffRemoved DiffDelete
highlight DiffFile guifg=#B48579 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight DiffLine guifg=#998082 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight DiffNewFile guifg=#DE9573 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#998082 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight EndOfBuffer guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight Error guifg=#B48579 guibg=#F4E0CD guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#B48579 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight Exception guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Float guifg=#DEA873 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight FoldColumn guifg=#998082 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight Folded guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=italic
highlight Function guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#AB9E92 guibg=#DEA873 guisp=NONE blend=NONE gui=NONE
highlight Include guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Italic guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=italic
highlight Keyword guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Label guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LineNr guifg=#E2C9B1 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight Macro guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MatchParen guifg=#F4E0CD guibg=#E2C9B1 guisp=NONE blend=NONE gui=NONE
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniCursorword guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight! link MiniCursorwordCurrent MiniCursorword
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=nocombine
highlight MiniIndentscopeSymbol guifg=#AB9E92 guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight MiniJump guifg=#998082 guibg=NONE guisp=#E2C9B1 blend=NONE gui=underline
highlight MiniJump2dSpot guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=undercurl
highlight MiniStarterCurrent guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterFooter guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterHeader guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniStarterInactive guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=italic
highlight MiniStarterItem guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemBullet guifg=#B5887D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterItemPrefix guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterQuery guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStarterSection guifg=#B5887D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineDevinfo guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFileinfo guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineFilename guifg=#FDC577 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineInactive guifg=#C8B39D guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeCommand guifg=#140F13 guibg=#DFAC90 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeInsert guifg=#140F13 guibg=#998082 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeNormal guifg=#140F13 guibg=#DE9573 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeOther guifg=#140F13 guibg=#C6C6B8 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeReplace guifg=#140F13 guibg=#B48579 guisp=NONE blend=NONE gui=NONE
highlight MiniStatuslineModeVisual guifg=#140F13 guibg=#DEA873 guisp=NONE blend=NONE gui=NONE
highlight MiniSurround guifg=#AB9E92 guibg=#DEA873 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineCurrent guifg=#E2C9B1 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineFill guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MiniTablineHidden guifg=#DE9573 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedCurrent guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedHidden guifg=#C8B39D guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineModifiedVisible guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniTablineVisible guifg=#E2C9B1 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight MiniTestEmphasis guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestFail guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTestPass guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=bold
highlight MiniTrailspace guifg=#B48579 guibg=#F4E0CD guisp=NONE blend=NONE gui=NONE
highlight ModeMsg guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MoreMsg guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#E2C9B1 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#DEA873 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Operator guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PMenu guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight PMenuSel guifg=#F4E0CD guibg=#998082 guisp=NONE blend=NONE gui=NONE
highlight PmenuSbar guifg=#C8B39D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PmenuThumb guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Question guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=#E2C9B1 guibg=#FDC577 guisp=NONE blend=NONE gui=NONE
highlight! link MiniTablineTabpagesection Search
highlight SignColumn guifg=#C8B39D guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialChar guifg=#B5887D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialKey guifg=#E2C9B1 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#B48579 guibg=NONE guisp=#B48579 blend=NONE gui=underline
highlight SpellCap guifg=#FDC577 guibg=NONE guisp=#FDC577 blend=NONE gui=underline
highlight SpellLocal guifg=#DFAC90 guibg=NONE guisp=#DFAC90 blend=NONE gui=underline
highlight SpellRare guifg=#C6C6B8 guibg=NONE guisp=#C6C6B8 blend=NONE gui=underline
highlight Statement guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight StatusLine guifg=#F4E0CD guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight StatusLineNC guifg=#C8B39D guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTerm guifg=#DE9573 guibg=#DE9573 guisp=NONE blend=NONE gui=NONE
highlight StatusLineTermNC guifg=#FDC577 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight StorageClass guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight String guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Structure guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#E2C9B1 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=#E2C9B1 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight TabLineSel guifg=#DE9573 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight Tag guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Title guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Todo guifg=#FDC577 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight TooLong guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Typedef guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight VertSplit guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight! link WinSeparator VertSplit
highlight Visual guifg=#140F13 guibg=#C8B39D guisp=NONE blend=NONE gui=NONE
highlight VisualNOS guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WarningMsg guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight WildMenu guifg=#F4E0CD guibg=#998082 guisp=NONE blend=NONE gui=NONE
highlight WinBar guifg=#F4E0CD guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight WinBarNC guifg=#C8B39D guibg=#140F13 guisp=NONE blend=NONE gui=NONE
highlight gitCommitOverflow guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight gitCommitSummary guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpCommand guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight helpExample guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @attribute guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @boolean guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @character.special guifg=#B5887D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @comment guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @conditional guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.builtin guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constant.macro guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @constructor guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @debug guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @define guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @exception guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @field guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @float guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.builtin guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @function.macro guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @include guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.function guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @keyword.operator guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @label guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @method guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @namespace guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @none guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @number guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @operator guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @parameter guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @preproc guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @property guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.bracket guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.delimiter guifg=#F4E0CD guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @punctuation.special guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @repeat guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @storageclass guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.escape guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.regex guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @string.special guifg=#B5887D guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @symbol guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.attribute guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @tag.delimiter guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.bold guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.danger guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.diff.add guifg=#DE9573 guibg=#AB9E92 guisp=NONE blend=NONE gui=bold
highlight @text.diff.delete guifg=#B48579 guibg=#AB9E92 guisp=NONE blend=NONE gui=bold
highlight @text.emphasis guifg=#C6C6B8 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight @text.environment guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.environment.name guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.literal guifg=#DE9573 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.math guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.note guifg=#DFAC90 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.reference guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @text.strike guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=strikethrough
highlight @text.title guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight @text.todo guifg=#FDC577 guibg=#AB9E92 guisp=NONE blend=NONE gui=NONE
highlight @text.underline guifg=NONE guibg=NONE guisp=NONE blend=NONE gui=underline
highlight @text.uri guifg=NONE guibg=#AB9E92 guisp=NONE blend=NONE gui=underline
highlight @type guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.builtin guifg=#998082 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @type.definition guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable guifg=#FDC577 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable.builtin guifg=#B48579 guibg=NONE guisp=NONE blend=NONE gui=NONE