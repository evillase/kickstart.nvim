return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",  -- lazy load on insert mode
    config = function()
      require("copilot").setup({
        -- your config options here
        suggestion = {
          enabled = true,         -- enable inline suggestions (ghost text)
          auto_trigger = true,    -- auto trigger suggestions on text changes
          debounce = 75,          -- debounce ms for suggestion requests
          keymap = {
            accept = "<M-l>",     -- accept suggestion with Alt+l (you can change)
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        panel = {
          enabled = true,         -- enable the Copilot panel UI
          auto_refresh = true,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom",  -- panel location ("bottom" or "right")
            ratio = 0.4,
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = "node",  -- nodejs command to run ("node" by default)
        server_opts_overrides = {},     -- override default LSP server options if needed
      })
    end,
  },
}
