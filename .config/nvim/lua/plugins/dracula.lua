return {
  -- add dracula
  {
    "Mofiqul/dracula.nvim",
    opts = {
      overrides = function(colors)
        return {
          -- CursorColumn = { bg = colors.selection },
          -- ColorColumn = { bg = colors.black },
        }
      end,
    },
  },
}
