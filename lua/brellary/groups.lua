local M = {}

function M.setup(p)
  local set = vim.api.nvim_set_hl

  -- Core UI
  set(0, "Normal", { fg = p.fg, bg = "none" })
  set(0, "NormalFloat", { fg = p.fg, bg = "none" })
  set(0, "FloatBorder", { fg = p.fg_muted, bg = "none" })

  set(0, "CursorLine", { bg = "none" })
  set(0, "CursorLineNr", { fg = p.fg, bg = "none" })
  set(0, "LineNr", { fg = p.fg_muted, bg = "none" })

  set(0, "Visual", { bg = p.selection })
  set(0, "StatusLine", { fg = p.fg, bg = "none" })
  set(0, "StatusLineNC", { fg = p.fg_muted, bg = "none" })

  set(0, "WinSeparator", { fg = p.fg_muted, bg = "none" })

  -- Syntax
  set(0, "Comment", { fg = p.comment, italic = true })
  set(0, "Constant", { fg = p.cyan })
  set(0, "String", { fg = p.orange })
  set(0, "Character", { fg = p.orange })
  set(0, "Number", { fg = p.cyan })
  set(0, "Boolean", { fg = p.purple })

  set(0, "Identifier", { fg = p.fg })
  set(0, "Function", { fg = p.blue })

  set(0, "Statement", { fg = p.blue })
  set(0, "Keyword", { fg = p.blue, italic = false })

  set(0, "Type", { fg = p.purple })
  set(0, "Special", { fg = p.cyan })

  set(0, "PreProc", { fg = p.purple })
  set(0, "Include", { fg = p.purple })

  set(0, "Operator", { fg = p.fg_dim })

  -- Diagnostics
  set(0, "DiagnosticError", { fg = p.red })
  set(0, "DiagnosticWarn", { fg = p.orange })
  set(0, "DiagnosticInfo", { fg = p.blue })
  set(0, "DiagnosticHint", { fg = p.green })

  -- Treesitter (basic)
  set(0, "@variable", { fg = p.fg })
  set(0, "@function", { fg = p.blue })
  set(0, "@keyword", { fg = p.blue })
  set(0, "@string", { fg = p.orange })
  set(0, "@type", { fg = p.purple })
  set(0, "@constant", { fg = p.cyan })
end

return M
