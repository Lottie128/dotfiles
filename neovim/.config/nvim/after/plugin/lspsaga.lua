local lspsaga = require("lspsaga")

lspsaga.init_lsp_saga({
  move_in_saga = { prev = "<C-k>", next = "<C-j>" },
  finder_action_keys = {
    open = "<CR>"
  },
  definition_preview_icon = "",
  border_style = "round",
  definition_action_keys = {
    edit = "<CR>"
  },
})
