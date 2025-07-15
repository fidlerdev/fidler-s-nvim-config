vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- SPLITTING (ALSO <C-W><C-S> -> horizontal && <C-W><C-V> -> vertical)
vim.keymap.set("n", "<leader>-", vim.cmd.split)
vim.keymap.set("n", "<leader>|", vim.cmd.vsplit)

-- TABS
vim.keymap.set("n", "<M-t>", vim.cmd.tabnew)
vim.keymap.set("n", "<M-w>", vim.cmd.tabclose)
vim.keymap.set("n", "<M-Left>", vim.cmd.tabprevious)
vim.keymap.set("n", "<M-Right>", vim.cmd.tabnext)

