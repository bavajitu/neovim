-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files:
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "c" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- disable automatic commenting on new line
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({
      "c",
      "r",
      "o",
    })
  end,
})

-- enable auto clang compiler for C files
vim.opt.makeprg = "clang -Wall -Wextra -Wpedantic -g % -o %<"

-- Set default shell for neovim
vim.o.shell = "/usr/bin/zsh"

-- indent-blankline configuration to stop bugging when colorscheme changes.
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- required highlight groups for indent-blankline
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#3b4252" })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#81a1c1" })

    local groups = {
      "Normal",
      "NormalNC",
      "NormalFloat",
      "FloatBorder",
      "SignColumn",
      "LineNr",
      "CursorLineNr",
      "EndOfBuffer",
      "StatusLine",
      "StatusLineNC",
      "VertSplit",
      "WinSeparator",
      "Pmenu",
      "PmenuSel",
      "TelescopeNormal",
      "TelescopeBorder",
    }

    for _, g in ipairs(groups) do
      vim.api.nvim_set_hl(0, g, { bg = "none" })
    end
  end,
})
