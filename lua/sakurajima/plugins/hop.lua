local colors = require("sakurajima.colors")
local highlight = require("sakurajima.highlight")

local M = {}

function M.setup()
	highlight.setup("HopNextKey", { fg = colors.cyan, gui = colors.bold })
	highlight.setup("HopNextKey1", { fg = colors.green, gui = colors.bold })
	highlight.setup("HopNextKey2", { fg = colors.red, gui = colors.bold })
	highlight.setup("HopUnmatched", { fg = colors.inactivegray, gui = colors.bold, guisp = colors.inactivegray })
	highlight.setup("HopCursor", { fg = colors.yellow, gui = colors.bold })
	highlight.setup("HopPreview", { fg = colors.orange, gui = colors.bold })
end

return M
