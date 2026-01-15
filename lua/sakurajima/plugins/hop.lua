local colors = require("sakurajima.colors")
local highlight = require("sakurajima.highlight")

local M = {}

function M.setup()
	highlight.setup("HopNextKey", { fg = colors.cyan, bold = true })
	highlight.setup("HopNextKey1", { fg = colors.green, bold = true })
	highlight.setup("HopNextKey2", { fg = colors.red, bold = true })
	highlight.setup("HopUnmatched", { fg = colors.inactivegray, bold = true, sp = colors.inactivegray })
	highlight.setup("HopCursor", { fg = colors.yellow, bold = true })
	highlight.setup("HopPreview", { fg = colors.orange, bold = true })
end

return M
