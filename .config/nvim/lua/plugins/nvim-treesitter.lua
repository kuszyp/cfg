return {
  --[[
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "java" },
    },
  },
]]
  --

  -- since `vim.tbl_deep_extend`, can only merge tables and not lists, the code above
  -- would overwrite `ensure_installed` with the new value.
  -- If you'd rather extend the default config, use the code below instead:
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
        "bash",
        "javascript",
        "json",
        "lua",
        "python",
        "query",
        "regex",
        "vim",
        "yaml",
      })
    end,
  },
}
