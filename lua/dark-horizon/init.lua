local M = {}

function M.setup()
	local colors = {
		bg = "#0E0E0E",
		white = "#FFFFFF",
		black = "#010101",
		gray = "#282828",
		red = "#F92672",
		red_pure = "#FF0000",
		violet = "#B795E6",
		purple = "#A42AEB",
		green = "#29D398",
		green_pure = "#00FF00",
		blue = "#26BBD9",
		yellow = "#FDB849",
		yellow_pure = "#FFFF00",
		orange = "#FAB795",
		cyan = "#59E1E3",
		comment = "#5D5D5D",
	}

	local highlights = {
		-- Default
		Normal = { fg = colors.white, bg = colors.bg },
		NormalFloat = { fg = colors.white, bg = colors.bg },
		Pmenu = { fg = colors.white, bg = colors.bg },
		PmenuSel = { fg = colors.bg, bg = colors.blue },
		Type = { fg = colors.blue },
		Typedef = { fg = colors.blue, italic = true },
		LineNr = { fg = colors.white, bg = colors.bg },
		CursorLine = { bg = colors.gray },
		StatusLine = { fg = colors.white, bg = colors.bg, bold = true },
		Visual = { bg = "#4F4A40" },
		Error = { fg = colors.red_pure, bold = true },
		Warning = { fg = colors.yellow_pure, bold = true },
		Info = { fg = colors.blue, bold = true },
		Hint = { fg = colors.cyan, italic = true },
		Ok = { fg = colors.green_pure, bold = true },
		DiagnosticError = { fg = colors.red_pure, bold = true },
		DiagnosticWarn = { fg = colors.yellow_pure, bold = true },
		DiagnosticInfo = { fg = colors.blue, bold = true },
		DiagnosticHint = { fg = colors.cyan, italic = true },
		DiagnosticOk = { fg = colors.green_pure, bold = true },
		Cursor = { bg = colors.white },
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
		Constant = { fg = colors.red },
		Directory = { fg = colors.blue, bold = true },
		ErrorMsg = { fg = colors.red_pure, bold = true },
		WarningMsg = { fg = colors.yellow_pure, bold = true },
		DiffAdd = { fg = colors.green_pure, bg = colors.bg },
		DiffChange = { fg = colors.yellow_pure, bg = colors.bg },
		DiffDelete = { fg = colors.red_pure, bg = colors.bg },
		Added = { fg = colors.green_pure, bg = colors.bg },
		Changed = { fg = colors.yellow_pure, bg = colors.bg },
		Removed = { fg = colors.red_pure, bg = colors.bg },

		-- Treesitter
		["@variable"] = { fg = colors.red },
		["@variable.builtin"] = { fg = colors.red, italic = true },
		["@variable.parameter"] = { fg = colors.yellow },
		["@variable.parameter.builtin"] = { fg = colors.red, italic = true },
		["@variable.member"] = { fg = colors.yellow },
		["@function"] = { fg = colors.yellow, bold = true },
		["@function.builtin"] = { fg = colors.yellow, bold = true },
		["@type"] = { fg = colors.blue },
		["@type.builtin"] = { fg = colors.blue },
		["@keyword"] = { fg = colors.blue, bold = true },
		["@keyword.import"] = { fg = colors.red, bold = true },
		["@string"] = { fg = colors.green },
		["@string.escape"] = { fg = colors.violet },
		["@string.regexp"] = { fg = colors.purple },
		["@string.special.path"] = { fg = colors.green },
		["@number"] = { fg = colors.violet },
		["@comment"] = { fg = colors.comment, italic = true },
		["@constant"] = { fg = colors.red },
		["@constant.builtin"] = { fg = colors.red },
		["@module"] = { fg = colors.red, bold = true },
		["@property"] = { fg = colors.yellow },
		["@attribute"] = { fg = colors.cyan },
		["@attribute.builtin"] = { fg = colors.cyan },
		-- ["@tag"] = { fg = colors.cyan },
		-- ["@tag.builtin"] = { fg = colors.cyan },
		["@tag.attribute"] = { fg = colors.purple, italic = true },
		-- ["@tag.delimiter"] = { fg = colors.cyan },

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
