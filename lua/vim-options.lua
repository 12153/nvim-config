vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.keymap.set("n", "<leader>vs", ":vsplit<CR>", { desc = "Vertical Split" })
vim.keymap.set("n", "<leader>hs", ":split<CR>", { desc = "Horizontal Split" })

vim.keymap.set("n", ",,", ":norm A,<CR>", { desc = "append comma at end of line" })
vim.keymap.set("n", ";;", ":norm A;<CR>", { desc = "append semi-colon at end of line" })

-- vim.keymap.set("n", "ii", vim.)

vim.api.nvim_set_option("clipboard","unnamed")

