-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- Neotree keybindings
vim.keymap.set({'n','v'}, '<leader>nf', ':Neotree right toggle<CR>', {silent = true})
vim.keymap.set({'n','v'}, '<leader>ng', ':Neotree float toggle git_status<CR>', {silent = true})

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function ()
		require('neo-tree').setup({
			source_selector = {
				winbar = false,
			},
		})
	end,
}

-- vim: ts=2 sts=2 sw=2 et
