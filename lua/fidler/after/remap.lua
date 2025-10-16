----------------------------LAZY DOCKER--------------------------------------------------------
vim.keymap.set({ 'n', 't' }, '<leader>ld', '<Cmd>lua LazyDocker.toggle()<CR>')
-----------------------------------------------------------------------------------------------


----------------------------LSP----------------------------------------------------------------
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Показать LSP ошибки на текущей строке
vim.keymap.set("n", "<M-k>", function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { desc = "Показать LSP ошибки на текущей строке" })
-----------------------------------------------------------------------------------------------


----------------------------TELESCOPE----------------------------------------------------------
local builtin = require("telescope.builtin")

-- GIT
vim.keymap.set("n", "<leader>fgf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fgc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>fgb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>fgs", builtin.git_status, {})

-- FILES IN CURRENT DIR
vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

vim.keymap.set("n", "<leader>fl", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- TreeSitter
vim.keymap.set("n", "<leader>ft", builtin.treesitter)

-- LSP
vim.keymap.set("n", "<leader>flo", builtin.lsp_outgoing_calls)
vim.keymap.set("n", "<leader>fli", builtin.lsp_incoming_calls)
vim.keymap.set("n", "<leader>flf", builtin.lsp_definitions)
vim.keymap.set("n", "<leader>flD", builtin.diagnostics) -- Diagnostics for all open buffers
vim.keymap.set("n", "<leader>fld", function() -- diagnostics only for current buffer
    builtin.diagnostics({
        bufnr = 0
    })
end)
-----------------------------------------------------------------------------------------------


--------------------------OIL------------------------------------------------------------------
-- Open parent directory in current window
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Open parent directory in floating window
vim.keymap.set("n", "<space>-", require("oil").toggle_float)
-----------------------------------------------------------------------------------------------


--------------------------------DAP------------------------------------------------------------
local dap = require("dap")
vim.keymap.set("n", "<space>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<space>gb", dap.run_to_cursor)

-- Eval var under cursor
vim.keymap.set("n", "<space>!", function()
    require("dapui").eval(nil, { enter = true })
end)

vim.keymap.set("n", "<F1>", dap.continue)
vim.keymap.set("n", "<F2>", dap.step_into)
vim.keymap.set("n", "<F3>", dap.step_over)
vim.keymap.set("n", "<F4>", dap.step_out)
vim.keymap.set("n", "<F5>", dap.step_back)
vim.keymap.set("n", "<F13>", dap.restart)
-----------------------------------------------------------------------------------------------
