require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.clipboard = {
	name = "win32yank",
	copy = {
		["+"] = "win32yank.exe -i --crlf",
		["*"] = "win32yank.exe -i --crlf",
	},
	paste = {
		["+"] = "win32yank.exe -o --lf",
		["*"] = "win32yank.exe -o --lf",
	},
	cache_enabled = 0,
}

vim.opt.clipboard = "unnamedplus"

vim.opt.foldmethod = "manual"
vim.opt.foldenable = true
vim.opt.foldlevel = 0
vim.opt.foldminlines = 1
vim.opt.viewoptions:append("folds")

-- vim.keymap.set("n", "<leader>dd", vim.diagnostic.setloclist, { desc = "Show diagnostics" })

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
	pattern = "*",
	callback = function()
		if vim.fn.empty(vim.fn.expand("%")) == 0 and vim.bo.buftype == "" then
			pcall(function()
				vim.cmd("mkview")
			end)
		end
	end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	pattern = "*",
	callback = function()
		if vim.fn.empty(vim.fn.expand("%")) == 0 and vim.bo.buftype == "" then
			pcall(function()
				vim.cmd("silent! loadview")
			end)
		end
	end,
})

vim.keymap.set("n", "<C-z>", "<Nop>", { noremap = true })

require("lazy").setup({
	require("plugins.neotree"),
	require("plugins.colortheme"),
	require("plugins.bufferline"),
	require("plugins.lualine"),
	require("plugins.treesitter"),
	require("plugins.telescope"),
	require("plugins.lsp"),
	require("plugins.autocompletion"),
	require("plugins.none-ls"),
	require("plugins.gitsigns"),
	require("plugins.alpha"),
	require("plugins.indent-blankline"),
	require("plugins.misc"),
	require("plugins.comment"),
	require("plugins.harpoon"),
	require("plugins.toggleterm"),
	require("plugins.notification"),
	require("plugins.trouble"),
})

vim.keymap.set("n", "<leader>dd", require("telescope.builtin").diagnostics, { desc = "Show diagnostics in Telescope" })
vim.cmd([[colorscheme tokyonight-night]])

require("core.plugin-mappings")
vim.g.tmux_navigator_no_mappings = 1

function _G.unmap_tmux_key()
	vim.api.nvim_del_keymap("n", "<C-\\>") -- Unmap in normal mode
	vim.api.nvim_del_keymap("t", "<C-\\>") -- Unmap in terminal mode
end

vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle ToggleTerm" })

vim.keymap.set("v", "<C-\\>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle ToggleTerm" })

vim.keymap.set("i", "<C-\\>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle ToggleTerm" })
