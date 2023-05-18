-- set theme
vim.cmd.colorscheme 'onedark' -- nordic, nord, catpuccin, tokyonight, onedark

-- set whitespace symbols
vim.opt.listchars = {
  tab = '→ ',
  trail = '•',
  extends = '»',
  precedes = '«',
  nbsp = '␣'
}
vim.opt.list = true

-- remove command line, unless in use
--vim.opt.cmdheight = 0
-- remove status line from bottom of window, lualine should be at top
vim.opt.laststatus = 1

-- relative line numbering
vim.opt.relativenumber = false

-- highlight line number
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- file space settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- un-highlight search
vim.keymap.set({ 'n', 'v' }, '<leader>,', ':nohlsearch<CR>', { silent = true })

-- remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {"*"},
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})

-- vim: ts=2 sts=2 sw=2 et
