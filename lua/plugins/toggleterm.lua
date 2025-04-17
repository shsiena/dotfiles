return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			open_mapping = [[<C-\>]],
			start_in_insert = true,
		})

		vim.keymap.set(
			"n",
			"<C-\\>",
			"<cmd>ToggleTerm<CR>",
			{ noremap = true, silent = true, desc = "Toggle ToggleTerm" }
		)
	end,
}
