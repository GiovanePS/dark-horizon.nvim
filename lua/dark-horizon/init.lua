local M = {}

function M.setup()

	local colors = {
		bg = "#0e0e0e",
		fg = "#D5D8DA",
		white = "#FFFFFF",
		black = "#010101",
		gray = "#7D7D7D",
		red = "#E95678",
		pink = "#FF4797",
		violet = "#B795E6",
		purple = "#A42AEB",
		green = "#29D398",
		blue = "#26BBD9",
		yellow = "#FDB849",
		orange = "#FAB795",
		cyan = "#59E1E3",
		comment = "#5D5D5D",
	}

	local highlights = {
		-- Default
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bg },
		Pmenu = { fg = colors.fg, bg = colors.bg },
		PmenuSel = { fg = colors.bg, bg = colors.blue },
		Type = { fg = colors.blue },
		Typedef = { fg = colors.blue, italic = true },
		LineNr = { fg = colors.fg, bg = colors.bg },
		CursorLine = { bg = colors.black },
		StatusLine = { fg = colors.fg, bg = colors.bg, bold = true },
		Visual = { bg = "#5F5A60" },
		Error = { fg = colors.red, bold = true },
		Warning = { fg = colors.orange, bold = true },
		Info = { fg = colors.blue, bold = true },
		Hint = { fg = colors.cyan, italic = true },
		Cursor = { bg = colors.fg },
		CurSearch = { fg = colors.bg, bg = colors.yellow, bold = true },

		-- Syntax
		Comment = { fg = colors.comment, italic = true },
		Identifier = { fg = colors.red },
		Keyword = { fg = colors.blue, bold = true },
		String = { fg = colors.green },
		Number = { fg = colors.violet },
		Boolean = { fg = colors.green },
		Function = { fg = colors.yellow, bold = true },
		Operator = { fg = colors.blue },
		Statement = { fg = colors.green, bold = true },
		Conditional = { fg = colors.blue, bold = true },

		-- Treesitter
		["@variable"] = { fg = colors.red },
		["@variable.parameter"] = { fg = colors.yellow },
		["@variable.member"] = { fg = colors.yellow },
		["@function"] = { fg = colors.yellow, bold = true },
		["@function.builtin"] = { fg = colors.yellow, bold = true },
		["@type"] = { fg = colors.blue, bg = colors.bg },
		["@type.builtin"] = { fg = colors.blue, bg = colors.bg },
		["@keyword"] = { fg = colors.blue, bold = true },
		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.violet },
		["@string.regexp"] = { fg = colors.purple },
		["@string.special.path"] = { fg = colors.green },
		["@number"] = { fg = colors.violet },
		["@comment"] = { fg = colors.comment, italic = true },
		["@constant"] = { fg = colors.red },
		["@constant.builtin"] = { fg = colors.red },

		-- Rainbow Delimiters
		RainbowDelimiterRed = { fg = colors.red },
		RainbowDelimiterYellow = { fg = colors.yellow },
		RainbowDelimiterBlue = { fg = colors.blue },
		RainbowDelimiterOrange = { fg = colors.orange },
		RainbowDelimiterGreen = { fg = colors.green },
		RainbowDelimiterViolet = { fg = colors.violet },
		RainbowDelimiterCyan = { fg = colors.cyan },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

end

return M
