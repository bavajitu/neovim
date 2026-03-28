return {
  dir = "~/.config/nvim/lua/brellary",
  lazy = false,
  priority = 1000,
  config = function()
    require("brellary").setup()
  end,
}
