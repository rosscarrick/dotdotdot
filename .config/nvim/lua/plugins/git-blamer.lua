return {
	"APZelos/blamer.nvim",
	lazy = false,
	config = function()
		vim.g.blamer_enabled = 1
		vim.g.blamer_relative_time = 1
		vim.g.blamer_delay = 500

		-- Get current Comment highlight
		local comment_hl = vim.api.nvim_get_hl(0, { name = "Comment" })
		-- Set Blamer to use a modified Comment style
		vim.api.nvim_set_hl(0, "Blamer", comment_hl)
	end,
	keys = {},
}
