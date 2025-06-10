local M = {}

function M.setup()

	local colors = {
		bg = "#0e0e0e",
		fg = "#D5D8DA",
		red = "#E95678",
		green = "#29D398",
		blue = "#26BBD9",
		yellow = "#FAB795",
		cyan = "#59E1E3",
	}

	local highlights = {
		-- Default
		Normal = { fg = colors.fg, bg = colors.bg },
		Comment = { fg = colors.gray, italic = true },
		Keyword = { fg = colors.blue, bold = true },
		String = { fg = colors.green },
		Number = { fg = colors.yellow },
		LineNr = { fg = colors.gray, bg = colors.bg },
		CursorLine = { bg = colors.bg },
		StatusLine = { fg = colors.fg, bg = colors.bg, bold = true },
		Visual = { bg = colors.bg, fg = colors.fg },
		Error = { fg = colors.red, bold = true },
		Warning = { fg = colors.yellow, bold = true },
		Info = { fg = colors.blue, bold = true },
		Hint = { fg = colors.cyan, italic = true },

		-- Treesitter
		["@variable"] = { fg = colors.fg },
		["@function"] = { fg = colors.blue, bold = true },
		["@keyword"] = { fg = colors.blue, bold = true },
		["@string"] = { fg = colors.green },
		["@number"] = { fg = colors.yellow },
		["@comment"] = { fg = colors.gray, italic = true },
	}

	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

end

return M
