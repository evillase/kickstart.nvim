-- lua line configuration for Neovim
-- https://github.com/nvim-lualine/lualine.nvim
return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      icons_enabled = false,
      component_separators = '|',
      section_separators = '',
      always_divide_middle = false,
    },
    sections = {
        lualine_a = {{'mode', fmt = function(str) return str:sub(1, 1) end}},
        lualine_b = {{'branch',icons_enabled=true,icon=''}, 'lsp_status', 'diagnostics'},
        lualine_c = {{'filename',newfile_status=true,path=1}},
        lualine_x = {'searchcount'},
        lualine_y = {'encoding','fileformat','filetype'},
        lualine_z = {'progress'},
    },
  },
}
