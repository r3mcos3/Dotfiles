-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.wrap = true
vim.opt.cursorcolumn = false
vim.opt.cursorline = false
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<leader>gg"] = vim.cmd.LazyGit
lvim.keys.normal_mode["<leader>l"] = vim.cmd.Lazy
lvim.keys.insert_mode["jj"] = "<ESC>"

-- Change theme settings
lvim.colorscheme = "gruvbox"
lvim.transparent_window = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

lvim.plugins = {
  {
    "wakatime/vim-wakatime",
    "ellisonleao/gruvbox.nvim",
    "kdheepak/lazygit.nvim"
  },
}

