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

		vim.keymap.set("n", "<leader>hd", require("harpoon.mark").clear_all, {
			desc = "Clear all harpooned files",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h1", function()
			require("harpoon.mark").set_current_at(1)
		end, {
			desc = "Set harpoon file 1",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h2", function()
			require("harpoon.mark").set_current_at(2)
		end, {
			desc = "Set harpoon file 2",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h3", function()
			require("harpoon.mark").set_current_at(3)
		end, {
			desc = "Set harpoon file 3",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h4", function()
			require("harpoon.mark").set_current_at(4)
		end, {
			desc = "Set harpoon file 4",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h5", function()
			require("harpoon.mark").set_current_at(5)
		end, {
			desc = "Set harpoon file 5",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h6", function()
			require("harpoon.mark").set_current_at(6)
		end, {
			desc = "Set harpoon file 6",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h7", function()
			require("harpoon.mark").set_current_at(7)
		end, {
			desc = "Set harpoon file 7",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h8", function()
			require("harpoon.mark").set_current_at(8)
		end, {
			desc = "Set harpoon file 8",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>h9", function()
			require("harpoon.mark").set_current_at(9)
		end, {
			desc = "Set harpoon file 9",
			noremap = true,
			silent = true,
		})

		vim.keymap.set("n", "<leader>1", function()
			ui.nav_file(1)
		end, {
			desc = "Harpoon file 1",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>2", function()
			ui.nav_file(2)
		end, {
			desc = "Harpoon file 2",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>3", function()
			ui.nav_file(3)
		end, {
			desc = "Harpoon file 3",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>4", function()
			ui.nav_file(4)
		end, {
			desc = "Harpoon file 4",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>5", function()
			ui.nav_file(5)
		end, {
			desc = "Harpoon file 5",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>6", function()
			ui.nav_file(6)
		end, {
			desc = "Harpoon file 6",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>7", function()
			ui.nav_file(7)
		end, {
			desc = "Harpoon file 7",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>8", function()
			ui.nav_file(8)
		end, {
			desc = "Harpoon file 8",
			noremap = true,
			silent = true,
		})
		vim.keymap.set("n", "<leader>9", function()
			ui.nav_file(9)
		end, {
			desc = "Harpoon file 9",
			noremap = true,
			silent = true,
		})
	end,
}
