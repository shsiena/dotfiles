vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.api.nvim_set_keymap("n", "<esc>", [[<C-\> <C-n>]], { noremap = true, silent = true })

vim.keymap.set("n", "<C-z>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<leader>dd", require("telescope.builtin").diagnostics, { desc = "Show diagnostics in Telescope" })
vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle ToggleTerm" })
vim.keymap.set("v", "<C-\\>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle ToggleTerm" })
vim.keymap.set("i", "<C-\\>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle ToggleTerm" })

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
