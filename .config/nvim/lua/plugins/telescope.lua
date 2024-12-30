return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = "┃ ",
      layout_config = {
        horizontal = {
          width = 0.9,
          preview_width = 0.5,
        },
      },
    },
  },
  keys = {
    {
      "<Leader>p",
      ":Telescope find_files<CR>",
      { noremap = true, silent = true },
    },
    {
      "<Leader>f",
      ":Telescope live_grep<CR>",
      { noremap = true, silent = true },
    },
    {
      "<Leader>b",
      ":Telescope buffers<CR>",
      { noremap = true, silent = true },
    },
  },
}
