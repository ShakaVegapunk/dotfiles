vim.opt.guicursor = ""
vim.g.dashboard_default_executive = "telescope"
vim.g.loaded_perl_provider = 0

vim.opt.foldenable = true
vim.opt.foldmethod = "manual"
vim.opt.foldlevel = 99

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = ""

vim.diagnostic.config({
    virtual_text = true,
})

-- Change preview window location
vim.api.nvim_set_keymap("n", "<leader>bh", "<C-W>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bj", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bk", "<C-W>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bl", "<C-W>l", { noremap = true, silent = true })

-- Code Folding
vim.keymap.set("n", "-", "<cmd>foldclose<CR>", { desc = "Close fold" })
vim.keymap.set("n", "+", "<cmd>foldopen<CR>", { desc = "Open fold" })
