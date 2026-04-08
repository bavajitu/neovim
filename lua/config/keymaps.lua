-- local discipline = require("takezo.discipline")
-- discipline.cowboy()

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Increment / Decrement
map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)

-- Delete word backwards
map("n", "dw", '"_daw', opts)

-- Select all
map("n", "<C-a>", "ggVG", opts)

-- Jumplist
map("n", "<C-m>", "<C-i>", opts)

-- Tabs
map("n", "te", ":tabedit<CR>", opts)
map("n", "<Tab>", ":tabnext<CR>", opts)
map("n", "<S-Tab>", ":tabprev<CR>", opts)

-- Splits
map("n", "ss", ":split<CR>", opts)
map("n", "sv", ":vsplit<CR>", opts)

-- Window movement
map("n", "sh", "<C-w>h", opts)
map("n", "sk", "<C-w>k", opts)
map("n", "sj", "<C-w>j", opts)
map("n", "sl", "<C-w>l", opts)

-- Window resize
map("n", "<C-w><Left>", "<C-w><", opts)
map("n", "<C-w><Right>", "<C-w>>", opts)
map("n", "<C-w><Up>", "<C-w>+", opts)
map("n", "<C-w><Down>", "<C-w>-", opts)

-- Diagnostics (Neovim native)
map("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- LaTeX build + open (async viewer)
map("n", "<leader>bd", function()
  vim.cmd("write")
  vim.fn.jobstart({ "pdflatex", vim.fn.expand("%") })
  vim.fn.jobstart({ "zathura", vim.fn.expand("%:r") .. ".pdf" }, { detach = true })
end, opts)

-- oil.nvim toggle
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- jump to start and end of line
map("n", "L", "$", opts)
map("n", "H", "0", opts)

-- Replacement keymapping for C_u and C_d
map("n", "U", "<C-u>", opts)
map("n", "J", "<C-d>", opts)

-- Auto-compile .cpp file:
vim.api.nvim_set_keymap(
  "n",
  "<F5>",
  ":!g++ -std=c++20 -Wall -Wextra -Wpedantic -Wconversion -Wshadow -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -o %:r %<CR>",
  { noremap = true, silent = true }
)

-- Shift+Enter behavior: insert a new line below the current line.
vim.keymap.set("n", "<S-CR>", "o<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "<S-CR>", "<Esc>o", { noremap = true, silent = true })

-- Map keys to move selected lines up and down in visual mode
vim.api.nvim_set_keymap("v", "<C-S-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-S-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Inc Rename:
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
vim.keymap.set("v", "<leader>rn", ":IncRename ")
