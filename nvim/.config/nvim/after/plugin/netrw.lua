vim.api.nvim_create_autocmd("FileType", { pattern = "netrw", command = [[nnoremap <buffer><C-l> <C-w>l]] })
