return {
  --[[
  -- https://github.com/hrsh7th/nvim-cmp
  --
  -- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  -- Codeium cmp source
  --
  --]]

  {
    "nvim-cmp",
    dependencies = { "codeium.nvim" },
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 100,
      })
    end,
  },

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- override nvim-cmp and add cmp-emoji
  --]]
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- Use <tab> for completion and snippets (supertab)
  --]]
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            cmp.select_next_item()
          elseif vim.snippet.active({ direction = 1 }) then
            vim.schedule(function()
              vim.snippet.jump(1)
            end)
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif vim.snippet.active({ direction = -1 }) then
            vim.schedule(function()
              vim.snippet.jump(-1)
            end)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/saghen/blink.cmp
  --
  -- blink.cmp is a completion plugin with support for LSPs and external sources that updates on every keystroke with 
  -- minimal overhead (0.5-4ms async). It use a custom SIMD fuzzy searcher to easily handle >20k items. It provides 
  -- extensibility via hooks into the trigger, sources and rendering pipeline. Plenty of work has been put into making 
  -- each stage of the pipeline as intelligent as possible, such as frecency and proximity bonus on fuzzy matching, 
  -- and this work is on-going
  --]]

  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      sources = {
        compat = vim.g.ai_cmp and { "codeium" } or nil,
      },
    },
    dependencies = {
      "codeium.nvim",
      vim.g.ai_cmp and "saghen/blink.compat" or nil,
    },
  },
}
