local colors = require("sakurajima.colors")
local highlight = require("sakurajima.highlight")

local M = {}

function M.setup()
	highlight.setup("TelescopeSelection", { fg = colors.dark_white, bg = colors.winter_gray })
	highlight.setup("TelescopeMultiIcon", { fg = colors.blue })
	highlight.setup("TelescopePreviewSize", { fg = colors.yellow })
	highlight.setup("TelescopePreviewDate ", { fg = colors.light_blue })
end

return M
