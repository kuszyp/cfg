return {

  --[[ https://github.com/nvim-java/nvim-java 
  --]]
  {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            jdtls = {
              -- your jdtls configuration goes here
            },
          },
          setup = {
            jdtls = function()
              require("java").setup({
                -- your nvim-java configuration goes here
              })
            end,
          },
        },
      },
    },
  },

  --[[ https://github.com/nvim-treesitter/nvim-treesitter
  --]]
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "java" },
    },
  },
}
