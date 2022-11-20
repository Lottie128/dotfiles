local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Keybinds
-- Save and Quit --
keymap("n", "<leader>s", ":w<cr>", opts)
keymap("n", "<leader>w", ":q<cr>", opts)
keymap("n", "<leader>q", ":bdelete<cr>", opts)

-- Window Naviagtion --
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize Windows --
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)

-- Navigate Buffers --
keymap('n', '<S-Tab>',   '<Plug>(cokeline-focus-prev)',  { silent = true })
keymap('n', '<Tab>',     '<Plug>(cokeline-focus-next)',  { silent = true })
keymap('n', '<leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
keymap('n', '<leader>n', '<Plug>(cokeline-switch-next)', { silent = true })

for i = 1,9 do
  keymap('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
  keymap('n', ('<leader>%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end

-- Escape Insert Mode --
keymap("i", "jk", "<ESC>", opts)

-- Indentation --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down --
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- File Explorer --
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

-- Commenting
keymap("n", "<leader>/", ":CommentToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
