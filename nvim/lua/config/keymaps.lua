vim.g.mapleader = " "
vim.g.gutentags_cache_dir = ".nvim-backup/.tags"
-- Write file
vim.keymap.set("n", "<Leader>w", ":write<CR>")
-- Resize windows
vim.keymap.set("n", "<Leader>z", "<C-w>|")
vim.keymap.set("n", "<Leader>Z", "<C-w>=")
-- Window movement
vim.keymap.set("n", "<Leader>h", "<C-w>h")
vim.keymap.set("n", "<Leader>j", "<C-w>j")
vim.keymap.set("n", "<Leader>k", "<C-w>k")
vim.keymap.set("n", "<Leader>l", "<C-w>l")
-- Insert blank lines and stay in normal mode
vim.keymap.set("n", "<Leader>o", "o<Esc>")
vim.keymap.set("n", "<Leader>O", "O<Esc>")

vim.keymap.set("n", "<F8>", ":TagbarOpenAutoClose")

vim.keymap.set("n", "<Leader>F", ":Files")
vim.keymap.set("n", "<Leader>B", ":Buffers")
vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>")
