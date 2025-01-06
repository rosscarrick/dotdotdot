return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },

  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- See `:help vim.lsp.*` for documentation on any of the below functions

        keymap.set(
          "n",
          "gd",
          vim.lsp.buf.definition,
          { buffer = ev.buf, silent = true, desc = "Go to definition" }
        )

        keymap.set("n", "<leader>h", vim.lsp.buf.hover, {
          buffer = ev.buf,
          silent = true,
          noremap = true,
          desc = "Show hover",
        })

        keymap.set(
          "n",
          "<leader>dl",
          "<cmd>Telescope diagnostics bufnr=0<CR>",
          { buffer = ev.buf, silent = true, desc = "Show buffer diagnostics" }
        )

        keymap.set(
          "n",
          "<leader>dk",
          vim.diagnostic.goto_prev,
          { buffer = ev.buf, silent = true, desc = "Go to previous diagnostic" }
        )

        keymap.set("n", "<leader>dK", function()
          vim.diagnostic.goto_prev()
          vim.lsp.buf.code_action()
        end, {
          buffer = ev.buf,
          silent = true,
          desc = "Go to previous diagnostic and open code action",
        })

        keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {
          buffer = ev.buf,
          silent = true,
          desc = "Go to next diagnostic",
        })

        keymap.set("n", "<leader>dJ", function()
          vim.diagnostic.goto_next()
          vim.lsp.buf.code_action()
        end, {
          buffer = ev.buf,
          silent = true,
          desc = "Go to next diagnostic and open code action",
        })

        keymap.set(
          { "n", "v" },
          "<leader>da",
          vim.lsp.buf.code_action,
          { buffer = ev.buf, silent = true, desc = "See Code actions" }
        )

        keymap.set(
          "n",
          "<leader>rn",
          vim.lsp.buf.rename,
          { buffer = ev.buf, silent = true, desc = "Smart rename" }
        )

        vim.api.nvim_set_keymap(
          "n",
          "<Leader>gr",
          "<cmd>lua vim.lsp.buf.references()<CR>",
          {
            noremap = true,
            silent = true,
            desc = "Find all references under cursor",
          }
        )
      end,
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs =
      { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers({
      -- default handler for installed servers
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["emmet_ls"] = function()
        -- configure emmet language server
        lspconfig["emmet_ls"].setup({
          capabilities = capabilities,
          filetypes = {
            "html",
            "typescriptreact",
            "javascriptreact",
            "css",
            "sass",
            "scss",
            "less",
          },
        })
      end,
      ["lua_ls"] = function()
        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              -- make the language server recognize "vim" global
              diagnostics = {
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        })
      end,
    })
  end,
}
