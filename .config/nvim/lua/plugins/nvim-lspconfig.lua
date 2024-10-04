return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {},
        helm_ls = {},
        ruff = {
          cmd_env = { RUFF_TRACE = "messages" },
          init_options = {
            settings = {
              logLevel = "error",
            },
          },
          keys = {
            {
              "<leader>co",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
        ruff_lsp = {
          keys = {
            {
              "<leader>co",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
      },
      setup = {
        yamlls = function()
          LazyVim.lsp.on_attach(function(client, buffer)
            if vim.bo[buffer].filetype == "helm" then
              vim.schedule(function()
                vim.cmd("LspStop ++force yamlls")
              end)
            end
          end, "yamlls")
        end,
        ruff = function()
          LazyVim.lsp.on_attach(function(client, _)
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end, "ruff")
        end,
      },
    },
  },
}
