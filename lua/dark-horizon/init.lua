local M = {}

function M.setup()

	local colors = {
		bg = "#0e0e0e",
		fg = "#D5D8DA",
		red = "#E95678",
		pink = "#FF4797",
		green = "#29D398",
		blue = "#26BBD9",
		yellow = "#FDB849",
		orange = "#FAB795",
		cyan = "#59E1E3",
		border = "#1A1C23",
		comment = "#353535",
	}

	local highlights = {
		-- Default
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg },
		Pmenu = { fg = colors.fg, bg = colors.bg },
		PmenuSel = { fg = colors.bg, bg = colors.blue },
		Comment = { fg = colors.comment, italic = true },
		Keyword = { fg = colors.blue, bold = true },
		String = { fg = colors.orange },
		Number = { fg = colors.orange },
		Type = { fg = colors.pink },
		Typedef = { fg = colors.pink, italic = true },
		Operator = { fg = colors.pink },
		Function = { fg = colors.yellow, bold = true },
		LineNr = { fg = colors.gray, bg = colors.bg },
		CursorLine = { bg = "#010101" },
		StatusLine = { fg = colors.fg, bg = colors.bg, bold = true },
		Visual = { bg = colors.bg, fg = colors.fg },
		Error = { fg = colors.red, bold = true },
		Warning = { fg = colors.orange, bold = true },
		Info = { fg = colors.blue, bold = true },
		Hint = { fg = colors.cyan, italic = true },

		-- Treesitter
		["@variable"] = { fg = colors.fg },
		["@function"] = { fg = colors.yellow, bold = true },
		["@keyword"] = { fg = colors.blue, bold = true },
		["@string"] = { fg = colors.orange },
		["@number"] = { fg = colors.orange },
		["@comment"] = { fg = colors.comment, italic = true },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

end

return M
