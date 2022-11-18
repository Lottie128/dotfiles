local opt = vim.opt

-- Options
local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  -- mouse = "a",
  pumheight = 10,
  showmode = true,
  showtabline = 0,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 100,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  laststatus = 3,
  showcmd = false,
  ruler = false,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "monospace:h17",
  title = true,
  -- colorcolumn = "80",
  -- colorcolumn = "120",
}

opt.shortmess:append "c"
opt.fillchars = vim.opt.fillchars + 'eob: '
opt.fillchars:append {
  stl = ' ',
}

for key, value in pairs(options) do
  opt[key] = value
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
