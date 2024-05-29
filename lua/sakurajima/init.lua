--              _                           _  _
--             | |                         (_)(_)
--  ___   __ _ | | __ _   _  _ __   __ _    _  _  _ __ ___    __ _
-- / __| / _` || |/ /| | | || '__| / _` |  | || || '_ ` _ \  / _` |
-- \__ \| (_| ||   < | |_| || |   | (_| |  | || || | | | | || (_| |
-- |___/ \__,_||_|\_\ \__,_||_|    \__,_|  | ||_||_| |_| |_| \__,_|
--                                        _/ |
--                                       |__/
--
-- Sakurajima is the name of a mountain representing Kagoshima Prefecture in Japan.

-- File: salurajima.lua

-- Description: A colour scheme for Neovim

-- Scheme: sakurajima
-- Maintainer: Daiki Nakashima < d a i k i 4 8 . e n g i n e e r [at] g m a i l . c o m >

-- Version: v0.1.0
-- Date: 29 May 2024
-- UpdateDate: 29 May 2024
-- ------------------------------------------------------------------------------

local M = {}

function M.setup()
	vim.o.background = 'dark'

	if not vim.fn.has('gui_running') and vim.o.t_Co < 256 then
		return
	end

	vim.cmd('highlight clear')
	if vim.fn.exists('syntax_on') then
		vim.cmd('syntax reset')
	end

	vim.g.colors_name = 'sakurajima'

	-- ------------------------------------------------------------------------------

	if not vim.fn.has('nvim') then
		vim.o.cursorline = true
		vim.o.cursorlineopt = 'number'
	end

	local highlight = function(group, opts)
		local guifg = opts.fg or 'NONE'
		local guibg = opts.bg or 'NONE'
		local gui = opts.gui or 'NONE'
		local guisp = opts.sp or 'NONE'
		local command = string.format('highlight %s guifg=%s guibg=%s gui=%s guisp=%s', group, guifg, guibg, gui, guisp)
		vim.cmd(command)
	end

	highlight('Normal', {fg='#8b9aaa', bg='#081421'})
	highlight('Visual', {fg='#0e1219', bg='#6d5279'})
	highlight('StatusLine', {fg='#2c3138', bg='#283446'})
	highlight('Cursor', {fg='#0e1219', bg='#8b9aaa'})
	highlight('CursorLine', {bg='#2c3138'})
	highlight('CursorLineNr', {fg='#8b9aaa', gui='bold'})
	highlight('Search', {fg='#0e1219', bg='#E6BE91'})
	highlight('PmenuSel', {fg='#0e1219', bg='#8b9aaa'})
	highlight('IncSearch', {fg='#0e1219', bg='#2680af'})
	highlight('LineNr', {fg='#2c3138', bg='#0e1219'})
	highlight('NonText', {fg='#2c3138'})
	highlight('Statement', {fg='#67A7CC'})
	highlight('Comment', {fg='#6d5279'})
	highlight('Constant', {fg='#515e97'})
	highlight('Todo', {fg='#82ade0', bg='#0e1219', sp='#28598F', gui='bold,undercurl'})
	highlight('Underlined', {gui='bold,underline'})
	highlight('Error', {fg='#8b9aaa', bg='#8f3231'})
	highlight('Pmenu', {fg='#8b9aaa', bg='cleared'})
	highlight('NormalFloat', {fg='#8b9aaa', bg='cleared'})
	highlight('StatusLineNC', {fg='#2c3138', bg='#0D2A52'})
	highlight('VertSplit', {fg='#67A7CC', bg='cleared'})
	highlight('Function', {fg='#AFB4DB'})
	highlight('Type', {fg='#6EA4CA'})
	highlight('SignColumn', {bg='#001F43', gui='none'})
	highlight('ErrorMsg', {fg='#8b9aaa', bg='#8f3231'})
	highlight('WarningMsg', {fg='#C7A252'})
	highlight('Identifier', {fg='#2A6E6B'})
	highlight('NvimInternalError', {fg='#8b9aaa', bg='#8f3231'})
	highlight('Directory', {fg='#2A6E6B'})
	highlight('MatchParen', {fg='#2c3138', bg='#67A7CC'})
	highlight('DiffText', {fg='#0E1219', bg='#E49653'})
	highlight('DiffAdd', {fg='#5AFF19', bg='#0D2A52'})
	highlight('DiffDelete', {fg='#E8204E', bg='#0D2A52'})
	highlight('DiffChange', {fg='#FFF450', bg='#0D2A52'})
	highlight('SpecialKey', {fg='#5AFF19'})

	vim.cmd('highlight link TabLine Function')
	vim.cmd('highlight link Boolean Constant')
	vim.cmd('highlight link Character Constant')
	vim.cmd('highlight link Conditional Statement')
	vim.cmd('highlight link CursorColumn CursorLine')
	vim.cmd('highlight link Define Statement')
	vim.cmd('highlight link Delimiter Comment')
	vim.cmd('highlight link Delimiter Statement')
	vim.cmd('highlight link Exception Statement')
	vim.cmd('highlight link Float Constant')
	vim.cmd('highlight link Folded Pmenu')
	vim.cmd('highlight link Include Statement')
	vim.cmd('highlight link Label Statement')
	vim.cmd('highlight link Macro Statement')
	vim.cmd('highlight link Number Constant')
	vim.cmd('highlight link Operator Statement')
	vim.cmd('highlight link PreCondit Statement')
	vim.cmd('highlight link PreProc Statement')
	vim.cmd('highlight link Repeat Statement')
	vim.cmd('highlight link Special Comment')
	vim.cmd('highlight link Special Statement')
	vim.cmd('highlight link SpecialChar Comment')
	vim.cmd('highlight link SpecialChar Statement')
	vim.cmd('highlight link SpecialComment Comment')
	vim.cmd('highlight link StorageClass Statement')
	vim.cmd('highlight link String Constant')
	vim.cmd('highlight link Structure Statement')
	vim.cmd('highlight link Tag Comment')
	vim.cmd('highlight link Tag Statement')
	vim.cmd('highlight link Typedef Statement')
	vim.cmd('highlight link WildMenu StatusLine')
	vim.cmd('highlight link Title Comment')

	highlight('DiagnosticError', {fg='#8f3231'})
	vim.cmd('highlight link DiagnosticVirtualTextError DiagnosticError')
	vim.cmd('highlight link DiagnosticFloatingError DiagnosticError')
	vim.cmd('highlight link DiagnosticSignError DiagnosticError')

	highlight('DiagnosticWarn', {fg='#C7A252'})
	vim.cmd('highlight link DiagnosticVirtualTextWarn DiagnosticWarn')
	vim.cmd('highlight link DiagnosticFloatingWarn DiagnosticWarn')
	vim.cmd('highlight link DiagnosticSignWarn DiagnosticWarn')

	highlight('DiagnosticInfo', {fg='#E6D2C9'})
	vim.cmd('highlight link DiagnosticVirtualTextInfo DiagnosticInfo')
	vim.cmd('highlight link DiagnosticFloatingInfo DiagnosticInfo')
	vim.cmd('highlight link DiagnosticSignInfo DiagnosticInfo')

	highlight('DiagnosticHint', {fg='#717375'})
	vim.cmd('highlight link DiagnosticVirtualTextHint DiagnosticHint')
	vim.cmd('highlight link DiagnosticFloatingHint DiagnosticHint')
	vim.cmd('highlight link DiagnosticSignHint DiagnosticHint')

	highlight('TelescopeSelection', {fg='#0e1219', bg='#615f82'})
	highlight('TelescopeMultiIcon', {fg='#0e1faf'})
	vim.cmd('highlight link TelescopePreviewDate TelescopeMultiIcon')
	highlight('TelescopePreviewSize', {fg='#8f9f1f'})

	highlight('DduUiFfFilterMatch', {fg='#8f9f1f', bg='cleared'})
	highlight('DduUiFfFloating', {fg='cleared', bg='#0e1219'})
	highlight('DduUiFfPrompt', {fg='#5AFF19', bg='cleared'})
	highlight('DduUiFfSelected', {fg='#E49653', bg='#E481ff'})

	highlight('DduUiFilerFloating', {fg='cleared', bg='#0e143f'})
	highlight('DduUiFilerSelected', {fg='#E49653', bg='#E481ff'})

end

return M
