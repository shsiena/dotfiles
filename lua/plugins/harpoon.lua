local opts = {
	noremap = true,
	silent = true,
}

return {
	"ThePrimeagen/harpoon",
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		vim.keymap.set("n", "<leader>a", mark.add_file)
		vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

		vim.keymap.set("n", "<C-1>", function()
			ui.nav_file(1)
		end, opts)
		vim.keymap.set("n", "<C-2>", function()
			ui.nav_file(2)
		end, opts)
		vim.keymap.set("n", "<C-3>", function()
			ui.nav_file(3)
		end, opts)
		vim.keymap.set("n", "<C-4>", function()
			ui.nav_file(4)
		end, opts)
	end,
}
