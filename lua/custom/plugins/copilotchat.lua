-- https://github.com/CopilotC-Nvim/CopilotChat.nvim

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log, and async functions
    },
    build = "make tiktoken", -- only on macos or linux
    opts = {
      -- see configuration section for options
      temperature = 0.2,
      context = "buffers", -- use buffer context by default
      selection = function(source)
        return require("CopilotChat.select").visual(source) or require("CopilotChat.select").buffer(source)
      end,
    },
    keys = {
      { "<leader>gc", "<cmd>CopilotChatToggle<CR>", desc = "Toggle Chat", mode = { "n" } },
      { "<leader>ge", "<cmd>CopilotChatExplain<CR>", desc = "Explain Selection", mode = { "v" } },
      { "<leader>gr", "<cmd>CopilotChatReview<CR>", desc = "Review Selection", mode = { "v" } },
      { "<leader>gf", "<cmd>CopilotChatFix<CR>", desc = "Fix Selection", mode = { "v" } },
      { "<leader>go", "<cmd>CopilotChatOptimize<CR>", desc = "Optimize Selection", mode = { "v" } },
      { "<leader>gd", "<cmd>CopilotChatDocs<CR>", desc = "Generate Docs", mode = { "v" } },
      { "<leader>gt", "<cmd>CopilotChatTests<CR>", desc = "Generate Tests", mode = { "v" } },
      { "<leader>gm", "<cmd>CopilotChatCommit<CR>", desc = "Generate Commit Msg Doc", mode = { "n" } },
      { "<leader>gs", "<cmd>CopilotChatCommit<CR>", desc = "Generate Commit Msg Sel", mode = { "v" } },
      { "<leader>gC", "<cmd>CopilotChatReset<CR>", desc = "Reset Chat", mode = { "n", "v" } },
      { "<leader>gp", function()
          local input = vim.fn.input("Perplexity: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { agent = "perplexityai", selection = false, })
          end
        end,
        desc = "Ask PerplexityAI", mode = { "n" }
      },
    },
    -- see command section for commands
  },
}
-- vim: ts=2 sts=2 sw=2 et
