require("lint").linters_by_ft = {
	python = { "flake8" },
}

local augroup = vim.api.nvim_create_augroup("lint", {})

vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
	group = augroup,
	pattern = "*",
	callback = function()
		require("lint").try_lint()
	end,
})
