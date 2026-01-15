local colors = require("sakurajima.colors")
local highlight = require("sakurajima.highlight")
local hop = require("sakurajima.plugins.hop")

local M = {}

function M.setup()
	-- 基本UI要素
	highlight.setup("Normal", { fg = colors.dark_white, bg = colors.black })
	highlight.setup("Visual", { fg = colors.black, bg = colors.light_gray })
	highlight.setup("StatusLine", { fg = colors.dark_white, bg = colors.black })
	highlight.setup("StatusLineNC", { fg = colors.dark_white, bg = colors.black })
	highlight.setup("Cursor", { fg = colors.black, bg = colors.dark_white })
	highlight.setup("CursorLine", { bg = colors.winter_gray })
	highlight.setup("CursorLineNr", { fg = colors.dark_white, bg = colors.winter_gray, bold = true })
	highlight.setup("Search", { fg = colors.black, bg = colors.orange })
	highlight.setup("PmenuSel", { fg = colors.light_gray, bg = colors.winter_gray })
	highlight.setup("IncSearch", { fg = colors.black, bg = colors.yellow })
	highlight.setup("LineNr", { fg = colors.inactivegray, bg = colors.black })
	highlight.setup("NonText", { fg = colors.inactivegray })
	highlight.setup("Pmenu", { fg = colors.dark_white, bg = colors.cleared })
	highlight.setup("NormalFloat", { fg = colors.dark_white, bg = colors.cleared })
	highlight.setup("VertSplit", { fg = colors.black, bg = colors.cleared })
	highlight.setup("SignColumn", { bg = colors.black })
	highlight.setup("MatchParen", { fg = colors.black, bg = colors.cyan })
	highlight.setup("Directory", { fg = colors.green })
	highlight.setup("QuickFixLine", { fg = colors.dark_cyan })

	-- 構文ハイライト（従来のVim構文グループ）
	highlight.setup("Statement", { fg = colors.dark_cyan })
	highlight.setup("Comment", { fg = colors.dark_gray })
	highlight.setup("Constant", { fg = colors.dark_green })
	highlight.setup("Function", { fg = colors.dark_yellow })
	highlight.setup("Type", { fg = colors.light_cyan })
	highlight.setup("Identifier", { fg = colors.dark_green })
	highlight.setup("String", { fg = colors.dark_orange })
	highlight.setup("Special", { fg = colors.dark_yellow_green })
	highlight.setup("SpecialKey", { fg = colors.dark_red })
	highlight.setup("Boolean", { fg = colors.cyan })
	highlight.setup("Title", { fg = colors.dark_white, bg = colors.black })
	highlight.setup("Underlined", { underline = true })
	highlight.setup("Todo", { fg = colors.light_blue, bg = colors.black, sp = colors.dark_blue, undercurl = true })

	-- メッセージ
	highlight.setup("MoreMsg", { fg = colors.dark_cyan, bg = colors.black })
	highlight.setup("Question", { fg = colors.dark_green })

	-- エラー・警告
	highlight.setup("Error", { fg = colors.dark_white, bg = colors.error })
	highlight.setup("ErrorMsg", { fg = colors.dark_white, bg = colors.error })
	highlight.setup("WarningMsg", { fg = colors.warn })
	highlight.setup("NvimInternalError", { fg = colors.dark_white, bg = colors.error })

	-- 差分
	highlight.setup("DiffText", { fg = colors.dark_white, bg = colors.black })
	highlight.setup("DiffAdd", { fg = colors.green, bg = colors.black })
	highlight.setup("DiffDelete", { fg = colors.dark_red, bg = colors.black })
	highlight.setup("DiffChange", { fg = colors.yellow, bg = colors.black })
	highlight.setup("Added", { fg = colors.green })
	highlight.setup("Changed", { fg = colors.yellow })
	highlight.setup("Removed", { fg = colors.dark_red })

	-- ハイライトリンク（重複・矛盾を整理済み）
	highlight.link("TabLine", "Function")
	highlight.link("Character", "Constant")
	highlight.link("Number", "Constant")
	highlight.link("Float", "Constant")
	highlight.link("Conditional", "Statement")
	highlight.link("Repeat", "Statement")
	highlight.link("Label", "Statement")
	highlight.link("Operator", "Statement")
	highlight.link("Exception", "Statement")
	highlight.link("Include", "Statement")
	highlight.link("Define", "Statement")
	highlight.link("Macro", "Statement")
	highlight.link("PreCondit", "Statement")
	highlight.link("PreProc", "Statement")
	highlight.link("StorageClass", "Statement")
	highlight.link("Structure", "Statement")
	highlight.link("Typedef", "Statement")
	highlight.link("Delimiter", "Statement")
	highlight.link("SpecialChar", "Statement")
	highlight.link("SpecialComment", "Comment")
	highlight.link("Tag", "Statement")
	highlight.link("CursorColumn", "CursorLine")
	highlight.link("Folded", "Pmenu")
	highlight.link("WildMenu", "StatusLine")

	-- 診断（LSP）
	highlight.setup("DiagnosticError", { fg = colors.error })
	highlight.link("DiagnosticVirtualTextError", "DiagnosticError")
	highlight.link("DiagnosticFloatingError", "DiagnosticError")
	highlight.link("DiagnosticSignError", "DiagnosticError")

	highlight.setup("DiagnosticWarn", { fg = colors.warn })
	highlight.link("DiagnosticVirtualTextWarn", "DiagnosticWarn")
	highlight.link("DiagnosticFloatingWarn", "DiagnosticWarn")
	highlight.link("DiagnosticSignWarn", "DiagnosticWarn")

	highlight.setup("DiagnosticInfo", { fg = colors.info })
	highlight.link("DiagnosticVirtualTextInfo", "DiagnosticInfo")
	highlight.link("DiagnosticFloatingInfo", "DiagnosticInfo")
	highlight.link("DiagnosticSignInfo", "DiagnosticInfo")

	highlight.setup("DiagnosticHint", { fg = colors.hint })
	highlight.link("DiagnosticVirtualTextHint", "DiagnosticHint")
	highlight.link("DiagnosticFloatingHint", "DiagnosticHint")
	highlight.link("DiagnosticSignHint", "DiagnosticHint")

	-- Tree-sitter ハイライトグループ
	-- 変数系
	highlight.setup("@variable", { fg = colors.dark_white })
	highlight.setup("@variable.builtin", { fg = colors.dark_cyan })
	highlight.setup("@variable.parameter", { fg = colors.dark_white })
	highlight.setup("@variable.member", { fg = colors.dark_white })

	-- 定数系
	highlight.setup("@constant", { fg = colors.dark_green })
	highlight.setup("@constant.builtin", { fg = colors.cyan })

	-- 関数系
	highlight.setup("@function", { fg = colors.dark_yellow })
	highlight.setup("@function.builtin", { fg = colors.dark_yellow })
	highlight.setup("@function.call", { fg = colors.dark_yellow })
	highlight.setup("@function.method", { fg = colors.dark_yellow })

	-- キーワード系
	highlight.setup("@keyword", { fg = colors.dark_cyan })
	highlight.setup("@keyword.function", { fg = colors.dark_cyan })
	highlight.setup("@keyword.return", { fg = colors.dark_cyan })
	highlight.setup("@keyword.operator", { fg = colors.dark_cyan })
	highlight.setup("@keyword.conditional", { fg = colors.dark_cyan })
	highlight.setup("@keyword.repeat", { fg = colors.dark_cyan })
	highlight.setup("@keyword.import", { fg = colors.dark_cyan })
	highlight.setup("@keyword.exception", { fg = colors.dark_cyan })

	-- 型系
	highlight.setup("@type", { fg = colors.light_cyan })
	highlight.setup("@type.builtin", { fg = colors.light_cyan })
	highlight.setup("@type.definition", { fg = colors.light_cyan })

	-- 文字列系
	highlight.setup("@string", { fg = colors.dark_orange })
	highlight.setup("@string.escape", { fg = colors.orange })
	highlight.setup("@string.special", { fg = colors.orange })

	-- コメント系
	highlight.setup("@comment", { fg = colors.dark_gray })
	highlight.setup("@comment.documentation", { fg = colors.dark_gray })

	-- 句読点系
	highlight.setup("@punctuation.bracket", { fg = colors.dark_white })
	highlight.setup("@punctuation.delimiter", { fg = colors.dark_white })
	highlight.setup("@punctuation.special", { fg = colors.dark_yellow_green })

	-- その他
	highlight.setup("@operator", { fg = colors.dark_cyan })
	highlight.setup("@number", { fg = colors.dark_green })
	highlight.setup("@boolean", { fg = colors.cyan })
	highlight.setup("@property", { fg = colors.dark_white })
	highlight.setup("@attribute", { fg = colors.dark_yellow })
	highlight.setup("@tag", { fg = colors.dark_cyan })
	highlight.setup("@tag.attribute", { fg = colors.dark_yellow })
	highlight.setup("@tag.delimiter", { fg = colors.dark_white })

	-- マークアップ系（Markdown等）
	highlight.setup("@markup.heading", { fg = colors.dark_yellow, bold = true })
	highlight.setup("@markup.strong", { bold = true })
	highlight.setup("@markup.italic", { italic = true })
	highlight.setup("@markup.link", { fg = colors.light_blue, underline = true })
	highlight.setup("@markup.raw", { fg = colors.dark_orange })

	-- プラグイン
	hop.setup()
end

return M
