return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      theme = "dragon", -- most muted (dragon = warmer, lotus = light)
      transparent = true,

      styles = {
        italic = true,
      },

      overrides = function()
        return {
          Normal = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          SignColumn = { bg = "none" },
          EndOfBuffer = { bg = "none" },
        }
      end,
    })

    vim.cmd("colorscheme kanagawa-dragon")
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffb86c", bold = true })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#5eacd3" })

    local function transparent()
      local groups = {
        "Normal",
        "NormalNC",
        "SignColumn",
        "EndOfBuffer",
        "VertSplit",
        "StatusLine",
        "StatusLineNC",
        "LineNr",
        -- "CursorLineNr",
        -- "CursorLine",
        "CursorColumn",
        "FoldColumn",
        "Pmenu",
        "PmenuSel",
        "PmenuSbar",
        "PmenuThumb",
        "NormalFloat",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
        "TelescopeResultsNormal",
        "TelescopeResultsBorder",
        "TelescopePreviewNormal",
        "TelescopePreviewBorder",
        "WhichKeyFloat",
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
      }

      for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
      end
    end

    transparent()

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = transparent,
    })
  end,
}
