return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		vim.lsp.handlers["window/showMessage"] = function(_, result, ctx)
			local client = vim.lsp.get_client_by_id(ctx.client_id)
			local level = ({ "ERROR", "WARN", "INFO", "DEBUG" })[result.type]
			vim.notify(result.message, level, { title = client and client.name or "LSP" })
		end
	end,
}
