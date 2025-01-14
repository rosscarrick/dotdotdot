return {
  "robitx/gp.nvim",
  config = function()
    local config = {
      chat_template = require("gp.defaults").short_chat_template,
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
      agents = {
        {
          provider = "copilot",
          name = "ChatCopilot",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = { model = "gpt-4o", temperature = 1.1, top_p = 1 },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are an AI coding assistant. Start the first response with '🫡 '. Keep responses concise and to the point.",
        },
      },
    }

    require("gp").setup(config)

    local function keymapOptions(desc)
      return {
        noremap = true,
        silent = true,
        nowait = true,
        desc = "GP Nvim: " .. desc,
      }
    end

    vim.keymap.set(
      { "n", "i" },
      "<C-g>n",
      "<cmd>GpChatNew vsplit<cr>",
      keymapOptions("New Chat")
    )
    vim.keymap.set(
      { "n", "i" },
      "<C-g>t",
      "<cmd>GpChatToggle vsplit<cr>",
      keymapOptions("Toggle Chat")
    )
    vim.keymap.set(
      { "v" },
      "<C-g>t",
      ":<C-u>'<,'>GpChatPaste vsplit<cr>",
      keymapOptions("Paste selection in latest/new chat")
    )
    vim.keymap.set(
      { "n", "i", "v" },
      "<C-g>f",
      "<cmd>GpChatFinder<cr>",
      keymapOptions("Chat Finder")
    )
    vim.keymap.set(
      "v",
      "<C-g>r",
      ":<C-u>'<,'>GpRewrite<cr>",
      keymapOptions("Visual Rewrite")
    )
    vim.keymap.set(
      "n",
      "<C-g>i",
      ":<cmd>GpAppend<cr>",
      keymapOptions("Implement from a prompt")
    )
    vim.keymap.set(
      "v",
      "<C-g>i",
      ":<C-u>'<,'>GpImplement<cr>",
      keymapOptions("Implement selection")
    )
    vim.keymap.set(
      "v",
      "<C-g>p",
      ":<C-u>'<,'>GpPrepend<cr>",
      keymapOptions("Prepend selection")
    )
    vim.keymap.set(
      "v",
      "<C-g>a",
      ":<C-u>'<,'>GpAppend<cr>",
      keymapOptions("Append selection")
    )
    vim.keymap.set(
      { "n", "i" },
      "<C-g>N",
      ":GpNextAgent<cr>",
      keymapOptions("Next Agent")
    )
    vim.keymap.set(
      "n",
      "<C-g>D",
      ":!rm ~/.local/share/nvim/gp/chats/*<cr>",
      keymapOptions("Delete all chats")
    )

    -- external
    vim.keymap.set("n", "<C-g>u", function()
      local choice = vim.fn.inputlist({
        "Select AI usage to check:",
        "1. ChatGPT",
        "2. Anthropic",
      })
      local url
      if choice == 1 then
        url = "https://platform.openai.com/settings/organization/usage/activity"
      elseif choice == 2 then
        url = "https://console.anthropic.com/settings/usage"
      else
        print("Invalid selection")
        return
      end
      vim.fn.jobstart({
        "open",
        url,
      })
    end, keymapOptions("Check AI usage in the browser"))

    vim.keymap.set("n", "<C-g>w", function()
      local choice =
        vim.fn.inputlist({ "Select AI to open:", "1. ChatGPT", "2. Claude" })
      local url
      if choice == 1 then
        url = "https://chat.openai.com/chat"
      elseif choice == 2 then
        url = "https://claude.ai/new"
      else
        print("Invalid selection")
        return
      end
      vim.fn.jobstart({
        "open",
        url,
      })
    end, keymapOptions("Start AI chat in the browser"))
  end,
}
