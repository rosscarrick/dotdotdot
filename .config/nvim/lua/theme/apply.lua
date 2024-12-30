local function apply(p)
  vim.opt.background = "dark"
  vim.opt.termguicolors = true

  vim.cmd([[source $VIMRUNTIME/colors/default.vim]])
  vim.g.colors_name = "subtle"

  -- Reset
  vim.cmd([[
  hi! link Terminal Normal
  hi! link Title Normal
  hi! link Directory Normal
  hi! link Question Normal
  hi! link vimVar Normal
  hi! link vimOper Normal
  hi! link vimSep Normal
  hi! link vimParenSep Normal
  hi! link CurSearch Search
  hi! link TermCursor Cursor
  
  hi! link @variable Normal

  hi! link javaScriptFunction Statement
  hi! link javaScriptIdentifier Statement
  hi! link sqlKeyword Statement
  hi! link yamlBlockMappingKey Statement
  hi! link rubyMacro Statement
  hi! link rubyDefine Statement
  hi! link @keyword.lua Statement

  hi! link vimCommentString Comment
  hi! link Conceal Comment

  hi! link StatuslineTerm Statusline

  hi! link StatuslineTermNC StatuslineNC

  hi! link MessageWindow Pmenu

  hi! link gitCommitSummary Title

  hi! link markdownUrl String

  hi! link DiagnosticError ErrorMsg
  hi! link DiagnosticDeprecated DiagnosticWarn
  hi! link DiagnosticUnnecessary DiagnosticWarn
  hi! link DiagnosticWarn WarningMsg
  hi! link DianosticHint DiagnosticInfo

  hi! link DiffAdd DiagnosticOk
  hi! link DiffDelete DiagnosticError
  ]])

  -- utils
  local function hl(group, settings)
    vim.api.nvim_set_hl(0, group, settings)
  end

  hl("Cursor", { fg = p.text, bg = p.subtle })
  hl("CursorLine", { bg = p.surface })
  hl("Normal", { fg = p.subtlest, bg = p.base })
  hl("Visual", { fg = p.text, bg = p.mute })
  hl("TabLine", { fg = p.mute, bg = p.base })
  hl("TabLineFill", { fg = p.mute, bg = p.base })
  hl("TabLineSel", { fg = p.text, bg = p.base, bold = true })
  hl("Search", { fg = p.base, bg = p.text })
  hl("IncSearch", { fg = p.base, bg = p.text })
  hl("SignColumn", { fg = p.mute, bg = p.base })
  hl("ModeMsg", { fg = p.mute, bg = p.base })
  hl("EndOfBuffer", { fg = p.mute, bg = p.base })
  hl("NormalFloat", { fg = p.text, bg = p.overlay })
  hl("FloatBorder", { fg = p.overlay, bg = p.overlay })
  hl("MoreMsg", { fg = p.subtlest })
  hl("Question", { fg = p.info })
  hl("QuickFixLine", { fg = p.info })

  hl("Function", { fg = p.text, bold = true })
  hl("CursorLineNr", { fg = p.text, bg = p.surface, bold = true })
  hl("StatusLine", { fg = p.mute, bg = "NONE", bold = true })

  hl("Identifier", { fg = p.subtlest })
  hl("LineNr", { fg = p.subtlest })

  hl("Statement", { fg = p.subtler })
  hl("Special", { fg = p.subtler })

  hl("Delimiter", { fg = p.subtle })
  hl("Operator", { fg = p.subtle })
  hl("NonText", { fg = p.subtle })

  hl("String", { fg = p.primary })
  hl("Boolean", { fg = p.secondary })
  hl("Number", { fg = p.tertiary })

  hl("SpecialKey", { fg = p.mute })
  hl("Comment", { fg = p.mute })
  hl("Folded", { fg = p.mute })
  hl("LineNrAbove", { fg = p.mute })
  hl("LineNrBelow", { fg = p.mute })
  hl("StatuslineNC", { fg = p.mute })
  hl("FoldColumn", { fg = p.mute })
  hl("Whitespace", { fg = p.mute })

  hl("ErrorMsg", { fg = p.danger })
  hl("WarningMsg", { fg = p.warning })
  hl("DiagnosticOk", { fg = p.success })
  hl("DiagnosticInfo", { fg = p.info })

  hl("Added", { fg = p.success })
  hl("Changed", { fg = p.info })
  hl("Removed", { fg = p.danger })

  hl("Pmenu", { fg = p.mute, bg = p.overlay })
  hl("PmenuSel", { fg = p.text, bg = p.surface, bold = true })
  hl("PmenuSbar", { bg = p.overlay })
  hl("PmenuThumb", { bg = p.mute })

  hl("MatchParen", { fg = p.text, bold = true })
  hl("WildMenu", { fg = p.text, bg = p.mute })

  -- telescope
  hl("TelescopeSelection", { fg = p.text, bg = p.surface })
  hl("TelescopeSelectionCaret", { fg = p.primary })
  hl("TelescopeNormal", { fg = p.mute, bg = p.overlay })
  hl("TelescopeBorder", { fg = p.overlay, bg = p.overlay })
  hl("TelescopeTitle", { fg = p.overlay, bg = p.overlay })
  hl("TelescopeMatching", { fg = p.text })

  hl("TelescopePromptTitle", { fg = p.overlay, bg = p.overlay })
  hl("TelescopePromptNormal", { fg = p.text, bg = p.overlay })
  hl("TelescopePromptBorder", { fg = p.overlay, bg = p.overlay })
  hl("TelescopePromptPrefix", { fg = p.mute })

  -- copilot
  hl("CopilotSuggestion", { fg = p.robot })
end

return {
  apply = apply,
}
