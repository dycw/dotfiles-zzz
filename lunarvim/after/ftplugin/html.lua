-- luacheck: ignore 112

vim.api.nvim_buf_set_keymap(0, "n", "<Leader>bs", "<Cmd>Bracey<CR>", { noremap = true, silent = true })
vim.api.nvim_buf_set_keymap(0, "n", "<Leader>br", "<Cmd>BraceyReload<CR>", { noremap = true, silent = true })
