return {
	"airblade/vim-gitgutter",
	opts = {},
	config = function()
		vim.g.gitgutter_enabled = 1

		vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#50fa7b" })
		vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#f1fa8c" })
		vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#ff5555" })
	end,
	keys = {
		{ "[]", "<Plug>(GitGutterNextHunk)", noremap = true, silent = true },
		{ "[[", "<Plug>(GitGutterPrevHunk)", noremap = true, silent = true },
		{ "[=", "<Plug>(GitGutterPreviewHunk)", noremap = true, silent = true },
	},
}
