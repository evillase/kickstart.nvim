-- set theme
-- onedark, onelight, onedark_vivid, onedark_dark, vaporwave, tokyonight-night, tokyonight-storm, tokyonight-moon, tokyonight-day
vim.cmd.colorscheme 'tokyonight-night'

-- status line at bottom of window
-- 1 to remove it, 3 for global status line
vim.opt.laststatus = 3

-- remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {"*"},
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})
