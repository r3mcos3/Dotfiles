
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Nvim-Tree Config
require("nvim-tree").setup({
  view = {
    adaptive_size = true
  }
})

vim.keymap.set('n', '<leader>f', ':NvimTreeFindFileToggle<CR>')
