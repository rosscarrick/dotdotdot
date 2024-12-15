return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local webConfig = { "prettier" }

		conform.setup({
			formatters_by_ft = {
				javascript = webConfig,
				typescript = webConfig,
				javascriptreact = webConfig,
				typescriptreact = webConfig,
				svelte = webConfig,
				css = webConfig,
				html = webConfig,
				json = webConfig,
				yaml = webConfig,
				markdown = webConfig,
				lua = { "stylua" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 2000,
			},
		})
	end,
}
