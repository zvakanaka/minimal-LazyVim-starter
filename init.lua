require("config.lazy")
require("config.autocmds")
vim.g.mapleader = " "
require("config.keymaps")

-- Ensure wl-clipboard is installed (e.g., via package manager: sudo apt install wl-clipboard)
-- Set clipboard to use wl-copy and wl-paste for Wayland
vim.g.clipboard = {
  name = 'wayland-clipboard',
  copy = {
    ['+'] = 'wl-copy',
    ['*'] = 'wl-copy',
  },
  paste = {
    ['+'] = 'wl-paste',
    ['*'] = 'wl-paste',
  },
  cache_enabled = 0,
}

-- Optional: Set clipboard to sync with system clipboard
vim.opt.clipboard = 'unnamedplus' -- Use + register for system clipboard

vim.wo.number = true

-- vim.keymap.set({'i'}, '<C-s>', '<Esc>:w<ENTER>')
-- vim.keymap.set({'n'}, '<C-s>', ':w<ENTER>')
--
-- vim.keymap.set({'n'}, '<leader>q', ':q<ENTER>')

local function dailyNote()
  local filename = "~/projects/notes/" .. os.date("%B %d, %Y") .. ".md"
  vim.cmd("e " .. filename)
end
vim.keymap.set("n", "<leader>nd", dailyNote)

-- open ~/.config/nvim/init.lua in a vsplit window bottom right
vim.keymap.set("n", "<leader>ev", ":vsplit ~/.config/nvim/init.lua<cr>", {
  desc = "Edit init.lua",
})
-- source ~/.config/nvim/init.lua
vim.keymap.set("n", "<leader>sv", ":source ~/.config/nvim/init.lua<cr>", {
  desc = "Source init.lua",
})

-- copy current file path to clipboard
vim.keymap.set("n", "<leader>cp", function()
  local file_path = vim.fn.expand("%:p")
  vim.fn.setreg("+", file_path)
  vim.cmd("echo 'Copied file path: " .. file_path .. "'")
end, {
  desc = "Copy current file path to clipboard",
})

