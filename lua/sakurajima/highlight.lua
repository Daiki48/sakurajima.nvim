local highlight = {}

function highlight.setup(group, opts)
	local guifg = opts.fg or "NONE"
	local guibg = opts.bg or "NONE"
	local gui = opts.gui or "NONE"
	local guisp = opts.sp or "NONE"
	local command = string.format("highlight %s guifg=%s guibg=%s gui=%s guisp=%s", group, guifg, guibg, gui, guisp)
	vim.cmd(command)
end

return highlight
