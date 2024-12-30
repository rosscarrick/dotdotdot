return {
  "github/copilot.vim",
  config = function()
    -- Automatically set the workspace folder on BufEnter
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        -- Get the current file's directory
        local current_dir = vim.fn.expand("%:p:h")
        vim.g.copilot_workspace_folders = { current_dir }
      end,
    })
  end,
}
