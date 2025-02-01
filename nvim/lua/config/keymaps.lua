vim.keymap.set("n", "gn", ":bnext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n", "gb", ":bprevious<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "gd", ":bdelete<CR>", { noremap = true, silent = true, desc = "Delete buffer" })
