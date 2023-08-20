local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>n;", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>n.", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>nu", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>ne", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>no", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>na", function()
	ui.nav_file(4)
end)
