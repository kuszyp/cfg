return {
  --[[
  -- https://github.com/nvim-java/nvim-java
  --
  -- Just install and start writing public static void main(String[] args).
  --
  -- Caution
  -- You cannot use nvim-java alongside nvim-jdtls. So remove nvim-jdtls before installing this
  --
  -- Tip
  -- You can find cool tips & tricks here https://github.com/nvim-java/nvim-java/wiki/Tips-&-Tricks
  --
  -- Note
  -- If you are facing errors while using, please check troubleshoot wiki https://github.com/nvim-java/nvim-java/wiki/Troubleshooting
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

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[ 
  -- https://github.com/nvim-treesitter/nvim-treesitter
  --
  -- The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim
  -- and to provide some basic functionality such as highlighting based on it.
  --]]
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "java" },
    },
  },

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
}
