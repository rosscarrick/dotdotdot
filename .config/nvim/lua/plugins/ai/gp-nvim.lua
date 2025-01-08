return {
  "robitx/gp.nvim",
  config = function()
    local config = {
      openai_api_key = os.getenv("OPENAI_API_KEY"),
      providers = {
        openai = {
          disable = false,
          endpoint = "https://api.openai.com/v1/chat/completions",
        },
        copilot = {
          endpoint = "https://api.githubcopilot.com/chat/completions",
          secret = {
            "bash",
            "-c",
            "cat ~/.config/github-copilot/apps.json | sed -e 's/.*oauth_token...//;s/\".*//'",
          },
        },
        anthropic = {
          endpoint = "https://api.anthropic.com/v1/messages",
          secret = os.getenv("ANTHROPIC_API_KEY"),
        },
      },
    }

    require("gp").setup(config)

    local function keymapOptions(desc)
      return {
        noremap = true,
        silent = true,
        nowait = true,
        desc = "GPT prompt " .. desc,
      }
    end

    vim.keymap.set(
      { "n", "i" },
      "<C-g>n",
      "<cmd>GpChatNew popup<cr>",
      keymapOptions("New Chat")
    )
    vim.keymap.set(
      { "n", "i" },
      "<C-g>t",
      "<cmd>GpChatToggle<cr>",
      keymapOptions("Toggle Chat")
    )
    vim.keymap.set(
      { "n", "i" },
      "<C-g>p",
      "<cmd>GpPopup<cr>",
      keymapOptions("Popup")
    )
    vim.keymap.set(
      { "n", "i" },
      "<C-g>f",
      "<cmd>GpChatFinder<cr>",
      keymapOptions("Chat Finder")
    )

    vim.keymap.set(
      "v",
      "<C-g>p",
      ":<C-u>'<,'>GpPopup<cr>",
      keymapOptions("Visual Popup")
    )
    vim.keymap.set(
      "v",
      "<C-g>r",
      ":<C-u>'<,'>GpRewrite<cr>",
      keymapOptions("Visual Rewrite")
    )
    vim.keymap.set(
      "v",
      "<C-g>i",
      ":<C-u>'<,'>GpImplement<cr>",
      keymapOptions("Implement selection")
    )

    vim.keymap.set("n", "<C-g>u", function()
      vim.fn.jobstart({
        "open",
        "https://platform.openai.com/settings/organization/usage/activity",
      })
    end, keymapOptions("ChatGPT Usage"))
  end,
}
