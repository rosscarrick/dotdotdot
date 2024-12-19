return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = "all",
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function()
    -- Apply custom highlights for Tree-sitter groups
    -- Add more highlight groups as needed
  end,
}
