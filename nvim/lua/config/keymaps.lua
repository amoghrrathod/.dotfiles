-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Keymap options
local opts = { noremap = true, silent = true }

-- Buffer navigation: switch to the next buffer
vim.api.nvim_set_keymap("n", "<C-2>", ":bnext<CR>", opts)

-- Buffer navigation: switch to the previous buffer
vim.api.nvim_set_keymap("n", "<C-1>", ":bprev<CR>", opts)

-- Nvim split screen
vim.api.nvim_set_keymap("n", "<C-v>", ":vs", opts)
