-- lightline support
local M = {}

M.init = function(theme)
	local has_lightline, _ = pcall(vim.fn["lightline#update"])
	if not has_lightline then
		return
	end

	local bg0 = theme.ErrantBg0.fg.hex
	local bg1 = theme.ErrantBg1.fg.hex
	local bg2 = theme.ErrantBg2.fg.hex
	local bg4 = theme.ErrantBg4.fg.hex
	local fg1 = theme.ErrantFg1.fg.hex
	local fg4 = theme.ErrantFg4.fg.hex

	local yellow = theme.ErrantYellow.fg.hex
	local blue = theme.ErrantBlue.fg.hex
	local aqua = theme.ErrantAqua.fg.hex
	local orange = theme.ErrantOrange.fg.hex
	local red = theme.ErrantRed.fg.hex
	local green = theme.ErrantGreen.fg.hex

	local lightline_theme = {
		normal = {
			left = { { bg0, fg4, "bold" }, { fg4, bg2 } },
			middle = { { fg4, bg1 } },
			right = { { bg0, fg4 }, { fg4, bg2 } },
			error = { { bg0, red } },
			warning = { { bg0, yellow } },
		},
		insert = {
			left = { { bg0, blue, "bold" }, { fg1, bg2 } },
			middle = { { fg4, bg1 } },
			right = { { bg0, blue }, { fg1, bg2 } },
		},
		inactive = {
			left = { { bg4, bg1 } },
			middle = { { bg4, bg1 } },
			right = { { bg4, bg1 }, { bg4, bg1 } },
		},
		terminal = {
			left = { { bg0, green, "bold" }, { fg1, bg2 } },
			middle = { { fg4, bg1 } },
			right = { { bg0, green }, { fg1, bg2 } },
		},
		replace = {
			left = { { bg0, aqua, "bold" }, { fg1, bg2 } },
			middle = { { fg4, bg1 } },
			right = { { bg0, aqua }, { fg1, bg2 } },
		},
		visual = {
			left = { { bg0, orange, "bold" }, { bg0, bg4 } },
			middle = { { fg4, bg1 } },
			right = { { bg0, orange }, { bg0, bg4 } },
		},
		tabline = {
			left = { { fg4, bg2 } },
			middle = { { bg0, bg4 } },
			right = { { bg0, orange } },
			tabsel = { { bg0, fg4 } },
		},
	}

	local ll_filled = vim.fn["lightline#colorscheme#fill"](lightline_theme)
	vim.g["lightline#colorscheme#errant#palette"] = ll_filled
	vim.schedule(function()
		vim.fn["lightline#disable"]()
		vim.fn["lightline#enable"]()
	end)
end

return M
