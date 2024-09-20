return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      { "mfussenegger/nvim-dap" },
    },
    -- opts = function(_, opts) end,
    opts = {},
    keys = {
      {
        "<leader>dPt",
        function()
          require("dap-python").test_method()
        end,
        desc = "Debug Method",
        ft = "python",
      },
      {
        "<leader>dPc",
        function()
          require("dap-python").test_class()
        end,
        desc = "Debug Class",
        ft = "python",
      },
    },
    config = function()
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },
}
