return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
      current_line_blame = true,
    })

    vim.keymap.set(
      "n",
      "<leader>hk",
      "<cmd>Gitsigns prev_hunk<CR>",
      { desc = "Go to previous hunk" }
    )
    vim.keymap.set(
      "n",
      "<leader>hj",
      "<cmd>Gitsigns next_hunk<CR>",
      { desc = "Go to next hunk" }
    )
    vim.keymap.set(
      "n",
      "<leader>hd",
      "<cmd>Gitsigns preview_hunk_inline<CR>",
      { desc = "Go to next hunk" }
    )
  end,
}
