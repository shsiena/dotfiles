return {
	"andweeb/presence.nvim",
	config = function()
		require("presence").setup({
			-- General
			auto_update = true,
			neovim_image_text = "The One True Text Editor",
			main_image = "neovim", -- "neovim" or "file"
			log_level = "debug", -- "debug", "info", "warn", "error"
			debounce_timeout = 10,
			enable_line_number = false,
			blacklist = {},
			buttons = true,
			show_time = true,

			-- Rich Presence text
			editing_text = "Editing %s",
			file_explorer_text = "Browsing %s",
			git_commit_text = "Committing changes",
			plugin_manager_text = "Managing plugins",
			reading_text = "Reading %s",
			workspace_text = "Working on %s",
			line_number_text = "Line %s out of %s",
		})
	end,
}
