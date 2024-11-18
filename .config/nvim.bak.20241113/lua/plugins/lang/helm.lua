return {
  --[[ https://github.com/towolf/vim-helm
  --]]
  {
    { "towolf/vim-helm", ft = "helm" },
  },

  --[[ https://github.com/nvim-treesitter/nvim-treesitter
  --]]
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "helm" } },
  },

  --[[ https://github.com/neovim/nvim-lspconfig
  --]]
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local ret = {
        servers = {
          helm_ls = {},
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
        },
      }
      return ret
    end,
  },
}
