return {
	{ -- Theme https://github.com/catppuccin/nvim
		'catppuccin/nvim',
		priority = 1000,
		config = function()
			require('catppuccin').setup({
				flavor = 'mocha', -- latte, frappe, macchiato, mocha
        transparent_background = true,
				term_colors = false,
				--integrations = {
        --  cmp = true,
        --  gitsigns = true,
				--	mason = true,
				--	neotree = true,
        --  treesitter = true,
        --  treesitter_context = true,
        --  telescope = true,
        --  which_key = true,
				--},
			})
		end,
	},

  { -- Theme https://github.com/AlexvZyl/nordic.nvim
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    config = function()
      require('nordic').setup({
        theme = 'nordic', -- nordic, onedark
        italic_comments = true,
        transparent_bg = true,
        cursorline = {
          theme = 'dark',
          hide_unfocused = true,
        },
      })
    end,
  },

  { -- Theme https://github.com/gbprod/nord.nvim
    'gbprod/nord.nvim',
    priority = 1000,
    config = function()
      require('nord').setup({
        transparent = true,
        terminal_colors = false,
        diff = { mode = "bg" }, -- [bg|fg]
        borders = false,
        errors = { mode = "fg" }, -- [bg|fg|none]
        -- value is any valid attr-llist value
        styles = {
          comments = { italic = true },
          keywords = {},
          functions = {},
          variables = {},
          errors = {},
        },
        -- override specific highlights to use other groups or a hex color
        on_highlights = function(highlights, colors) end,
      })
    end,
  },

  { -- Theme https://github.com/folke/tokyonight.nvim
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup({
        style = 'night', -- storm, moon, night, and day
        transparent = true,
        hide_inactive_statusline = true,
      })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et

