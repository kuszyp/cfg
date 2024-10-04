return {
  --[[ https://github.com/catppuccin/nvim 
  --]]
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = true,
  },

  --[[ https://github.com/Mofiqul/dracula.nvim
  --]]
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    --[[
    opts = {
      overrides = function(colors)
        return {
          Change the color of columns at 80,120 character
          ColorColumn = { bg = colors.black },

          Change the color of cursor column
          CursorColumn = { bg = colors.selection },
        }
      end,
    },
    --]]
  },

  --[[ Colorscheme | LazyVim
  --]]
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato", -- dracula, catppuccin, catppuccin-latte, catppuccin-macchiato, catppuccin-mocha, catppuccin-frappe
    },
  },
}
