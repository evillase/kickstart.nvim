-- https://github.com/CopilotC-Nvim/CopilotChat.nvim

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log, and async functions
    },
    -- build = "make tiktoken", -- only on macos or linux
    opts = {
      -- see configuration section for options
    },
    -- see command section for commands
  },
}
-- vim: ts=2 sts=2 sw=2 et
