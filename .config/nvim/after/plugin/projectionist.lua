vim.keymap.set("n", "<leader>pa", vim.cmd.A)
vim.keymap.set("n", "<leader>pv", vim.cmd.AV)

vim.g.projectionist_heuristics = {
	["*"] = {
		["*.cpp"] = {
			["make"] = "g++ {}.cpp -o {} && ./{} < input && rm {}",
			["console"] = "g++ {}.cpp -o {} && ./{} && rm {} && read",
		},
		["*.py"] = {
			["make"] = "python {}.py",
			["console"] = "python",
		},
	},
	["pom.xml"] = {
		["*"] = {
			["start"] = "./mvnw spring-boot =run",
		},
		["src/main/java/*.java"] = {
			["alternate"] = "src/test/java/{}Tests.java",
		},
		["src/test/java/*Tests.java"] = {
			["alternate"] = "src/main/java/{}.java",
		},
	},
}
