local M = {}

local palette = require("brellary.palette")
local groups = require("brellary.groups")

M.config = {
  transparent = true,
}

function M.setup(user_config)
  user_config = user_config or {}
  M.config = vim.tbl_deep_extend("force", M.config, user_config)

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "brellary"

  local p = palette.get()
  groups.setup(p)
end

return M
