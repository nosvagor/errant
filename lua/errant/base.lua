local lush = require("lush")
local colors = require("errant.colors")
local styles = require("errant.settings").styles
local utils = require("errant.utils")

-- options (dark mode by default)
local bg0 = colors.dark0
local bg1 = colors.dark1
local bg2 = colors.dark2
local bg3 = colors.dark3
local bg4 = colors.dark4

local fg0 = colors.light0
local fg1 = colors.light1
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red = colors.bright_red
local green = colors.bright_green
local yellow = colors.bright_yellow
local blue = colors.bright_blue
local purple = colors.bright_purple
local aqua = colors.bright_aqua
local orange = colors.bright_orange
local gray = colors.gray

local bg = vim.o.background
if bg == nil then
	bg = "dark"
	vim.o.background = bg
end

-- swap colors if light mode
if bg == "light" then
	bg0 = colors.light0
	bg1 = colors.light1
	bg2 = colors.light2
	bg3 = colors.light3
	bg4 = colors.light4
	fg0 = colors.dark0
	fg1 = colors.dark1
	fg2 = colors.dark2
	fg3 = colors.dark3
	fg4 = colors.dark4
	red = colors.faded_red
	green = colors.faded_green
	yellow = colors.faded_yellow
	blue = colors.faded_blue
	purple = colors.faded_purple
	aqua = colors.faded_aqua
	orange = colors.faded_orange
end

-- handle light/dark contrast settings
local contrast = vim.g["errant_contrast_" .. bg]
if contrast == "hard" then
	bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
	bg0 = colors[bg .. "0_soft"]
end

-- extending colors table with basic names for easy customization in g:errant_* options
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green = green
colors.yellow = yellow
colors.blue = blue
colors.purple = purple
colors.aqua = aqua
colors.orange = orange

local hls_cursor = utils.get_color_from_var(vim.g.errant_hls_cursor, orange, colors)
local hls_highlight = utils.get_color_from_var(vim.g.errant_hls_highlight, yellow, colors)
local number_column = utils.get_color_from_var(vim.g.errant_number_column, nil, colors)
local color_column = utils.get_color_from_var(vim.g.errant_color_column, bg1, colors)
local vert_split = utils.get_color_from_var(vim.g.errant_vert_split, bg0, colors)
local tabline_sel = utils.get_color_from_var(vim.g.errant_tabline_sel, green, colors)
local sign_column = utils.get_color_from_var(vim.g.errant_sign_column, bg1, colors)

local improved_strings_fg = fg1
local improved_strings_bg = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg = orange
local special_string_bg = bg1
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.errant_improved_strings) then
	improved_strings_fg = green
	improved_strings_bg = nil
	special_string_bg = nil
	special_string_gui = nil
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = bg0.hex
vim.g.terminal_color_8 = gray.hex
vim.g.terminal_color_1 = colors.neutral_red.hex
vim.g.terminal_color_9 = red.hex
vim.g.terminal_color_2 = colors.neutral_green.hex
vim.g.terminal_color_10 = green.hex
vim.g.terminal_color_3 = colors.neutral_yellow.hex
vim.g.terminal_color_11 = yellow.hex
vim.g.terminal_color_4 = colors.neutral_blue.hex
vim.g.terminal_color_12 = blue.hex
vim.g.terminal_color_5 = colors.neutral_purple.hex
vim.g.terminal_color_13 = purple.hex
vim.g.terminal_color_6 = colors.neutral_aqua.hex
vim.g.terminal_color_14 = aqua.hex
vim.g.terminal_color_7 = fg4.hex
vim.g.terminal_color_15 = fg1.hex

vim.g.colors_name = "errant"

local table_concat = table.concat

local base_group = lush(function()
	return {
		-- Base groups
		ErrantFg0({ fg = fg0 }),
		ErrantFg1({ fg = fg1 }),
		ErrantFg2({ fg = fg2 }),
		ErrantFg3({ fg = fg3 }),
		ErrantFg4({ fg = fg4 }),
		ErrantGray({ fg = gray }),
		ErrantBg0({ fg = bg0 }),
		ErrantBg1({ fg = bg1 }),
		ErrantBg2({ fg = bg2 }),
		ErrantBg3({ fg = bg3 }),
		ErrantBg4({ fg = bg4 }),

		ErrantRed({ fg = red }),
		ErrantRedBold({ fg = red, gui = styles.bold }),
		ErrantGreen({ fg = green }),
		ErrantGreenBold({ fg = green, gui = styles.bold }),
		ErrantYellow({ fg = yellow }),
		ErrantYellowBold({ fg = yellow, gui = styles.bold }),
		ErrantBlue({ fg = blue }),
		ErrantBlueBold({ fg = blue, gui = styles.bold }),
		ErrantPurple({ fg = purple }),
		ErrantPurpleBold({ fg = purple, gui = styles.bold }),
		ErrantAqua({ fg = aqua }),
		ErrantAquaBold({ fg = aqua, gui = styles.bold }),
		ErrantOrange({ fg = orange }),
		ErrantOrangeBold({ fg = orange, gui = styles.bold }),

		ErrantRedSign({ fg = red, bg = sign_column, gui = styles.invert_signs }),
		ErrantGreenSign({ fg = green, bg = sign_column, gui = styles.invert_signs }),
		ErrantYellowSign({ fg = yellow, bg = sign_column, gui = styles.invert_signs }),
		ErrantBlueSign({ fg = blue, bg = sign_column, gui = styles.invert_signs }),
		ErrantPurpleSign({ fg = purple, bg = sign_column, gui = styles.invert_signs }),
		ErrantAquaSign({ fg = aqua, bg = sign_column, gui = styles.invert_signs }),
		ErrantOrangeSign({ fg = orange, bg = sign_column, gui = styles.invert_signs }),

		ErrantRedUnderline({ gui = styles.undercurl, sp = red }),
		ErrantGreenUnderline({ gui = styles.undercurl, sp = green }),
		ErrantYellowUnderline({ gui = styles.undercurl, sp = yellow }),
		ErrantBlueUnderline({ gui = styles.undercurl, sp = blue }),
		ErrantPurpleUnderline({ gui = styles.undercurl, sp = purple }),
		ErrantAquaUnderline({ gui = styles.undercurl, sp = aqua }),
		ErrantOrangeUnderline({ gui = styles.undercurl, sp = orange }),

		ColorColumn({ bg = color_column }),
		Conceal({ fg = blue }),
		Cursor({ gui = styles.inverse }),
		lCursor({ Cursor }),
		iCursor({ Cursor }),
		vCursor({ Cursor }),
		CursorIM({ Cursor }),
		CursorLine({ bg = bg1 }),
		CursorColumn({ CursorLine }),
		Directory({ ErrantGreenBold }),
		DiffAdd({ fg = green, bg = bg0, gui = styles.inverse }),
		DiffChange({ fg = aqua, bg = bg0, gui = styles.inverse }),
		DiffDelete({ fg = red, bg = bg0, gui = styles.inverse }),
		DiffText({ fg = yellow, bg = bg0, gui = styles.inverse }),
		ErrorMsg({ fg = bg0, bg = red, gui = styles.bold }),
		VertSplit({ fg = bg3, bg = vert_split }),
		Folded({ fg = gray, bg = bg1, gui = styles.italic_strings }),
		FoldColumn({ fg = gray, bg = bg1 }),
		SignColumn({ bg = sign_column }),
		IncSearch({ fg = hls_cursor, bg = bg0, gui = styles.inverse }),
		LineNr({ fg = bg4, bg = number_column }),
		CursorLineNr({ fg = yellow, bg = bg1 }),
		MatchParen({ bg = bg3, gui = styles.bold }),
		ModeMsg({ ErrantYellowBold }),
		MoreMsg({ ErrantYellowBold }),
		NonText({ ErrantBg2 }),
		Normal({ fg = fg1, bg = bg0 }),
		Pmenu({ fg = fg1, bg = bg2 }),
		PmenuSel({ fg = bg2, bg = fg4, gui = styles.bold }),
		PmenuSbar({ bg = bg2 }),
		PmenuThumb({ bg = bg4 }),
		Question({ ErrantOrangeBold }),
		QuickFixLine({ fg = bg0, bg = yellow, gui = styles.bold }),
		Search({ fg = hls_highlight, bg = bg0, gui = styles.inverse }),
		SpecialKey({ ErrantFg4 }),
		SpellRare({ ErrantPurpleUnderline }),
		SpellBad({ ErrantRedUnderline }),
		StatusLine({ fg = bg2, bg = fg1, gui = styles.inverse }),
		StatusLineNC({ fg = bg1, bg = fg4, gui = styles.inverse }),
		TabLineFill({ fg = bg4, bg = bg1, gui = styles.invert_tabline }),
		TabLine({ fg = bg4, bg = bg1, gui = styles.invert_tabline }),
		TabLineSel({ fg = tabline_sel, bg = bg1, gui = styles.invert_tabline }),
		Title({ ErrantGreenBold }),
		Visual({ bg = bg3, gui = styles.invert_selection }),
		VisualNOS({ Visual }),
		WarningMsg({ ErrantRedBold }),
		WildMenu({ fg = blue, bg = bg2, gui = styles.bold }),
		Constant({ ErrantPurple }),
		Special({ fg = special_string_fg, bg = special_string_bg, gui = special_string_gui }),
		String({
			fg = improved_strings_fg,
			bg = improved_strings_bg,
			gui = improved_strings_gui,
		}),
		Character({ ErrantPurple }),
		Number({ ErrantPurple }),
		Boolean({ ErrantPurple }),
		Float({ ErrantPurple }),
		Identifier({ ErrantBlue }),
		Function({ ErrantGreenBold }),
		Statement({ ErrantRed }),
		Conditional({ ErrantRed }),
		Repeat({ ErrantRed }),
		Label({ ErrantRed }),
		Exception({ ErrantRed }),
		Keyword({ ErrantRed }),
		Operator({ ErrantOrange }),
		PreProc({ ErrantAqua }),
		Include({ ErrantAqua }),
		Define({ ErrantAqua }),
		Macro({ ErrantAqua }),
		PreCondit({ ErrantAqua }),
		Type({ ErrantYellow }),
		StorageClass({ ErrantOrange }),
		Structure({ ErrantAqua }),
		Typedef({ ErrantYellow }),
		SpecialChar({ ErrantRed }),
		Tag({ ErrantAquaBold }),
		Delimiter({ ErrantFg3 }),
		Comment({ fg = gray, gui = styles.italic_comments }),
		Debug({ ErrantRed }),
		Underlined({ fg = blue, gui = styles.underline }),
		Bold({ gui = styles.bold }),
		Italic({ gui = styles.italic }),
		Ignore({}),
		Error({ ErrantRed, gui = table_concat({ styles.bold, styles.inverse }, ",") }),
		Todo({ fg = fg0, gui = table_concat({ styles.bold, styles.italic_comments }, ",") }),
		diffAdded({ ErrantGreen }),
		diffRemoved({ ErrantRed }),
		diffChanged({ ErrantAqua }),
		diffFile({ ErrantOrange }),
		diffNewFile({ ErrantYellow }),
		diffLine({ ErrantBlue }),
		-- signature
		SignatureMarkText({ ErrantBlueSign }),
		SignatureMarkerText({ ErrantPurpleSign }),
		-- gitcommit
		gitcommitSelectedFile({ ErrantGreen }),
		gitcommitDiscardedFile({ ErrantRed }),
		-- checkhealth
		healthError({ fg = bg0, bg = red }),
		healthSuccess({ fg = bg0, bg = green }),
		healthWarning({ fg = bg0, bg = yellow }),
	}
end)

return base_group
