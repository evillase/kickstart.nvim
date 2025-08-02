
-- Plugin specification for olimorris/codecompanion.nvim
-- This table is returned to configure the plugin and its dependencies
return {
  {
    "olimorris/codecompanion.nvim", -- Main plugin
    dependencies = {
      "nvim-lua/plenary.nvim", -- Utility functions
      "nvim-treesitter/nvim-treesitter", -- Syntax parsing
      "zbirenbaum/copilot.lua", -- GitHub Copilot integration
    },
    opts = {}, -- Plugin options (empty for now)
  },
}

-- vim: ts=2 sts=2 sw=2 et
