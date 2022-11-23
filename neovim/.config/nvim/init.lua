if vim.g.vscode then
	require("default.settings")
else
	require("default.settings")
	require("default.keymaps")
	require("default.plugins")
end
