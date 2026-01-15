local highlight = {}

-- ハイライトグループを設定
function highlight.setup(group, opts)
	local hl_opts = {}
	for k, v in pairs(opts) do
		if v ~= nil and v ~= "NONE" and v ~= "cleared" then
			hl_opts[k] = v
		end
	end
	vim.api.nvim_set_hl(0, group, hl_opts)
end

-- ハイライトグループをリンク
function highlight.link(from, to)
	vim.api.nvim_set_hl(0, from, { link = to })
end

return highlight
