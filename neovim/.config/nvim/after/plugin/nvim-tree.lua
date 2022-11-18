local global = vim.g
local nt_api = require("nvim-tree.api")

global.loaded_netrw = 1
global.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  open_on_setup = true,
  sort_by = "case_sensitive",
  diagnostics = {
    enable = true,
    show_on_dirs = true
  },
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
