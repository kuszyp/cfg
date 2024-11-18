return {
  --[[
  -- https://github.com/hrsh7th/nvim-cmp
  --
  -- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  --
  --]]

  --[[
  -- Auto completion.
  -- remove cmp-buffer
  --]]
  --[[
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    -- Not all LSP servers add brackets when completing a function.
    -- To better deal with this, LazyVim adds a custom option to cmp,
    -- that you can configure. For example:
    --
    -- ```lua
    -- opts = {
    --   auto_brackets = { "python" }
    -- }
    -- ```
    opts = function()
      vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
      local cmp = require("cmp")
      local defaults = require("cmp.config.default")()
      local auto_select = true
      return {
        auto_brackets = {}, -- configure any filetype to auto add brackets
        completion = {
          completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
        },
        preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = LazyVim.cmp.confirm({ select = auto_select }),
          ["<C-y>"] = LazyVim.cmp.confirm({ select = true }),
          ["<S-CR>"] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ["<C-CR>"] = function(fallback)
            cmp.abort()
            fallback()
          end,
          ["<tab>"] = function(fallback)
            return LazyVim.cmp.map({ "snippet_forward", "ai_accept" }, fallback)()
          end,
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "path" },
        }, {
          { name = "buffer" },
        }),
        formatting = {
          format = function(entry, item)
            local icons = LazyVim.config.icons.kinds
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end

            local widths = {
              abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
              menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30,
            }

            for key, width in pairs(widths) do
              if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
                item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
              end
            end

            return item
          end,
        },
        experimental = {
          -- only show ghost text when we show ai completions
          ghost_text = vim.g.ai_cmp and {
            hl_group = "CmpGhostText",
          } or false,
        },
        sorting = defaults.sorting,
      }
    end,
    main = "lazyvim.util.cmp",
  },
  --]]

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
  -- https://github.com/hrsh7th/nvim-cmp
  --
  -- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  --
  -- Snippets
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    dependencies = {
      {
        "garymjr/nvim-snippets",
        opts = {
          friendly_snippets = true,
        },
        dependencies = { "rafamadriz/friendly-snippets" },
      },
    },
    opts = function(_, opts)
      opts.snippet = {
        expand = function(item)
          return LazyVim.cmp.expand(item.body)
        end,
      }
      if LazyVim.has("nvim-snippets") then
        table.insert(opts.sources, { name = "snippets" })
      end
    end,
  },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/hrsh7th/nvim-cmp
  --
  -- A completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and "sourced".
  --
  -- Add lazydev source to cmp
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = function(_, opts)
      table.insert(opts.sources, { name = "lazydev", group_index = 0 })
    end,
  },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/hrsh7th/cmp-nvim-lsp
  --
  -- nvim-cmp source for neovim's built-in language server client
  --
  -- Language servers provide different completion results depending on the capabilities of the client. Neovim's default 
  -- omnifunc has basic support for serving completion candidates. nvim-cmp supports more types of completion candidates, 
  -- so users must override the capabilities sent to the server such that it can provide these candidates during a 
  -- completion request. These capabilities are provided via the helper function require('cmp_nvim_lsp').default_capabilities
  --
  -- As these candidates are sent on each request, adding these capabilities will break the built-in omnifunc support \
  -- for neovim's language server client. nvim-cmp provides manually triggered completion that can replace omnifunc. 
  -- See :help cmp-faq for more details.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/hrsh7th/cmp-buffer
  --
  -- nvim-cmp source for buffer words
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  { "hrsh7th/cmp-buffer" },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/hrsh7th/cmp-path
  --
  -- nvim-cmp source for filesystem paths
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  { "hrsh7th/cmp-path" },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/garymjr/nvim-snippets
  --
  -- Allow vscode style snippets to be used with native neovim snippets vim.snippet. Also comes with support for friendly-snippets.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "garymjr/nvim-snippets",
    opts = {
      friendly_snippets = true,
    },
    dependencies = { "rafamadriz/friendly-snippets" },
  },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/rafamadriz/friendly-snippets
  --
  -- Snippets collection for a set of different programming languages.
  --
  -- The only goal is to have one community driven repository for all kinds of snippets in all programming 
  -- languages, this way you can have it all in one place.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  { "rafamadriz/friendly-snippets" },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/echasnovski/mini.pairs
  --
  -- Minimal and fast autopairs
  --
  -- Default LazyVim setup left for reference
  --]]
  --  {
  --    "echasnovski/mini.pairs",
  --    event = "VeryLazy",
  --    opts = {
  --      modes = { insert = true, command = true, terminal = false },
  --      -- skip autopair when next character is one of these
  --      skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
  --      -- skip autopair when the cursor is inside these treesitter nodes
  --      skip_ts = { "string" },
  --      -- skip autopair when next character is closing pair
  --      -- and there are more closing pairs than opening pairs
  --      skip_unbalanced = true,
  --      -- better deal with markdown code blocks
  --      markdown = true,
  --    },
  --    config = function(_, opts)
  --      LazyVim.mini.pairs(opts)
  --    end,
  --  },
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/folke/ts-comments.nvim
  --
  -- Tiny plugin to enhance Neovim's native comments:
  -- * Easily override the comment string for a given treesitter language
  -- * Supports different comment strings for different treesitter node types
  -- * Relaxed rules for uncommenting
  -- * Add proper whitespace when needed
  -- * Supports multiple commentstrings for the same language. The first one is used for adding comments. All are used for uncommenting.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },
  --]]

  --]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/echasnovski/mini.ai
  --
  -- Extend and create a/i textobjects
  --
  -- It enhances some builtin textobjects (like a(, a), a', and more), creates new ones (like a*, a<Space>, af, a?, and more), 
  -- and allows user to create their own (like based on treesitter, and more).
  --
  -- Supports dot-repeat, v:count, different search methods, consecutive application, and customization via Lua patterns or functions.
  --
  -- Has builtins for brackets, quotes, function call, argument, tag, user prompt, and any punctuation/digit/whitespace character.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    opts = function()
      local ai = require("mini.ai")
      return {
        n_lines = 500,
        custom_textobjects = {
          o = ai.gen_spec.treesitter({ -- code block
            a = { "@block.outer", "@conditional.outer", "@loop.outer" },
            i = { "@block.inner", "@conditional.inner", "@loop.inner" },
          }),
          f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }), -- function
          c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }), -- class
          t = { "<([%p%w]-)%f[^<%w][^<>]->.-</%1>", "^<.->().*()</[^/]->$" }, -- tags
          d = { "%f[%d]%d+" }, -- digits
          e = { -- Word with case
            { "%u[%l%d]+%f[^%l%d]", "%f[%S][%l%d]+%f[^%l%d]", "%f[%P][%l%d]+%f[^%l%d]", "^[%l%d]+%f[^%l%d]" },
            "^().*()$",
          },
          i = LazyVim.mini.ai_indent, -- indent
          g = LazyVim.mini.ai_buffer, -- buffer
          u = ai.gen_spec.function_call(), -- u for "Usage"
          U = ai.gen_spec.function_call({ name_pattern = "[%w_]" }), -- without dot in function name
        },
      }
    end,
    config = function(_, opts)
      require("mini.ai").setup(opts)
      LazyVim.on_load("which-key.nvim", function()
        vim.schedule(function()
          LazyVim.mini.ai_whichkey(opts)
        end)
      end)
    end,
  },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/folke/lazydev.nvim
  --
  -- lazydev.nvim is a plugin that properly configures LuaLS for editing your Neovim config by lazily updating your workspace libraries.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  {
    "folke/lazydev.nvim",
    ft = "lua",
    cmd = "LazyDev",
    opts = {
      library = {
        { path = "luvit-meta/library", words = { "vim%.uv" } },
        { path = "LazyVim", words = { "LazyVim" } },
        { path = "snacks.nvim", words = { "Snacks" } },
        { path = "lazy.nvim", words = { "LazyVim" } },
      },
    },
  },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]

  --[[
  -- https://github.com/Bilal2453/luvit-meta
  --
  -- This project is a collection of definition files for the framework Luvit. The definitions provide types for all 
  -- modules currently shipped in Luvit, the classes, methods and their arguments and returns; it does as well provide 
  -- descriptions whereever possible, either by scraping the Luvit-docs, Nodejs docs, luv docs or manually written in some places.
  --
  -- Some of the definitions are scraped off of code/docs and then some manual work is done to figure types out. For 
  -- those the used scraper is located under scrapers, the script outputs to a file in the same directory. From there 
  -- it is manually copied over to the actual library definition. Other definitions -and most of them- are completely 
  -- manually written, as it was required to figure the logic out in order to figure the types.
  --
  -- Default LazyVim setup left for reference
  --]]
  --[[
  { "Bilal2453/luvit-meta", lazy = true },
  --]]

  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
  --[[ ------------------------------------------------------------------------------------------------------------- ]]
}
