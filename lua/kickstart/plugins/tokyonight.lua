return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
        on_colors = function(colors)
          -- You can customize the colors here.
          -- For example, you can change the color of the 'Comment' highlight group.
          colors.bg = "#000000" -- Change the background color to black
          colors.bg_dark = "#000000" -- Change the dark background color to black
          colors.bg_float = "#000000" -- Change the float background color to black
          -- colors.bg_sidebar = "#000000" -- Change the sidebar background color to black
          colors.bg_statusline = "#000000" -- Change the statusline background color to black

        end,
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      --vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
