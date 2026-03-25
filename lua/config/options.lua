-- Term GUI colors
vim.opt.termguicolors = true

vim.opt.mouse = ""

-- LSP diagnostics
vim.cmd("highlight DiagnosticUnderlineError gui=undercurl guisp=#FF0000")
vim.cmd("highlight DiagnosticUnderlineWarn gui=undercurl guisp=#FFA500")
vim.cmd("highlight DiagnosticUnderlineInfo gui=undercurl guisp=#00FFFF")
vim.cmd("highlight DiagnosticUnderlineHint gui=undercurl guisp=#00FF00")

-- Line highlight
vim.o.cursorline = true
vim.o.cursorlineopt = "number"
