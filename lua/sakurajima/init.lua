local sakurajima_dinner = require("sakurajima.themes.dinner")

local M = {}

function M.setup()
	vim.o.background = "dark"

	if not vim.fn.has("gui_running") and vim.o.t_Co < 256 then
		return
	end

	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "sakurajima"

	if not vim.fn.has("nvim") then
		vim.o.cursorline = true
		vim.o.cursorlineopt = "number"
	end

	sakurajima_dinner.setup()
end

return M
