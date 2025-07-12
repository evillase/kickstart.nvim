-- Configure top of the screen bufferline
-- https://github.com/akinsho/bufferline.nvim
return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead of buffers
        numbers = "none", -- "none" | "ordinal" | "buffer_id" | "both"
        close_command = "bdelete! %d", -- can be a string | function, see ":
      },
    },
  },
}
