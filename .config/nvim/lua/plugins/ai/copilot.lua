return {
  "github/copilot.vim",
  config = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.g.copilot_workspace_folders = { vim.fn.getcwd() }
        -- print(
        --   "✅ Added workspace to Copilot"
        --     .. vim.inspect(vim.g.copilot_workspace_folders)
        -- )
      end,
    })
  end,
}
