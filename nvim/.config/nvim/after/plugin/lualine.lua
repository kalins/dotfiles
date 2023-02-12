local lualine = require('lualine')

lualine.setup({
  options = {
    disabled_filetypes = {}
  },
  sections = {
    lualine_c = {{'filename', path = 1}}
  },
  inactive_sections = {
    lualine_c = {{'filename', path = 1}}
  }
})
