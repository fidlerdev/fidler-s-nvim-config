-- LazyDocker remaps
vim.keymap.set({ 'n', 't' }, '<leader>ld', '<Cmd>lua LazyDocker.toggle()<CR>')

-- LSP remaps
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
