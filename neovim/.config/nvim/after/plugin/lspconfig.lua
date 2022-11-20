local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local typescript = require("typescript")

local map = vim.keymap.set

local on_attach = function(client)
  -- Lspsaga keybindings
  map("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", {noremap = true, silent = true})
  map("n", "gD", "<cmd>Lspsaga peek_definition<CR>", {noremap = true, silent = true})
  map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", {noremap = true, silent = true})
  map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", {noremap = true, silent = true})
  map("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", {noremap = true, silent = true})
  map("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", {noremap = true, silent = true})
  map("n", "[d", "<cmd>Lspsaga diagnostics_jump_prev<CR>", {noremap = true, silent = true})
  map("n", "]d", "<cmd>Lspsaga diagnostics_jump_next<CR>", {noremap = true, silent = true})
  map("n", "K", "<cmd>Lspsaga hover_doc<CR>", {noremap = true, silent = true})
  map("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", {noremap = true, silent = true})

  -- Lsp keybindings
  map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
  map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})

  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
    map("n", "<leader>rf", "<cmd>:TypescriptRenameFile<CR>")
  end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  }
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["sumneko_lua"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
        path = vim.split(package.path, ";"),
      },
      diagnostics = {
        globals = {"vim"},
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
        },
      },
    },
  }
})
