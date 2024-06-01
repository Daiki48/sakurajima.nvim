local colors = require("sakurajima.colors")

return {
	normal = {
		a = { bg = colors.dark_gray, fg = colors.black, gui = "bold" },
		b = { bg = colors.winter_gray, fg = colors.light_gray },
		c = { bg = colors.winter_gray, fg = colors.light_gray },
	},
	insert = {
		a = { bg = colors.dark_blue, fg = colors.black, gui = "bold" },
		b = { bg = colors.winter_gray, fg = colors.light_gray },
		c = { bg = colors.winter_gray, fg = colors.light_gray },
	},
	visual = {
		a = { bg = colors.dark_yellow, fg = colors.black, gui = "bold" },
		b = { bg = colors.winter_gray, fg = colors.light_gray },
		c = { bg = colors.winter_gray, fg = colors.light_gray },
	},
	replace = {
		a = { bg = colors.dark_red, fg = colors.black, gui = "bold" },
		b = { bg = colors.winter_gray, fg = colors.light_gray },
		c = { bg = colors.winter_gray, fg = colors.light_gray },
	},
	command = {
		a = { bg = colors.green, fg = colors.black, gui = "bold" },
		b = { bg = colors.winter_gray, fg = colors.light_gray },
		c = { bg = colors.winter_gray, fg = colors.light_gray },
	},
	inactive = {
		a = { bg = colors.winter_gray, fg = colors.gray, gui = "bold" },
		b = { bg = colors.winter_gray, fg = colors.light_gray },
		c = { bg = colors.winter_gray, fg = colors.light_gray },
	},
}
