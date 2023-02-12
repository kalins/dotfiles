local lualine = require('lualine')

lualine.setup({
  options = {
    disabled_filetypes = {}
  },
  winbar = {
    lualine_c = {{'filename', path = 1}}
  },
  inactive_winbar = {
    lualine_c = {{'filename', path = 1}}
  }
})
