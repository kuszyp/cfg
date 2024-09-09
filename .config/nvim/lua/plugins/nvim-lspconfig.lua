return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {},
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
    },
  },
}
