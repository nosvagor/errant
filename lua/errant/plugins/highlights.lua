-- 3rd party plugins highlights
local lush = require("lush")
local base = require("errant.base")
local styles = require("errant.settings").styles

local plugins = lush(function()
	return {
		-- netrw
		netrwDir({ base.ErrantAqua }),
		netrwClassify({ base.ErrantAqua }),
		netrwLink({ base.ErrantGray }),
		netrwSymLink({ base.ErrantFg1 }),
		netrwExe({ base.ErrantYellow }),
		netrwComment({ base.ErrantGray }),
		netrwList({ base.ErrantBlue }),
		netrwHelpCmd({ base.ErrantAqua }),
		netrwCmdSep({ base.ErrantFg3 }),
		netrwVersion({ base.ErrantGreen }),
		-- nvim-treesitter
		TSNone({}),
		TSError({ }),
		TSTitle({ base.Title }),
		TSLiteral({ base.String }),
		TSURI({ base.Underlined }),
		TSVariable({ base.ErrantFg1 }),
		TSPunctDelimiter({ base.Delimiter }),
		TSPunctBracket({ base.Delimiter }),
		TSPunctSpecial({ base.Delimiter }),
		TSConstant({ base.Constant }),
		TSConstBuiltin({ base.Special }),
		TSConstMacro({ base.Define }),
		TSString({ base.String }),
		TSStringRegex({ base.String }),
		TSStringEscape({ base.SpecialChar }),
		TSCharacter({ base.Character }),
		TSNumber({ base.Number }),
		TSBoolean({ base.Boolean }),
		TSFloat({ base.Float }),
		TSFunction({ base.Function }),
		TSFuncBuiltin({ base.Special }),
		TSFuncMacro({ base.Macro }),
		TSParameter({ base.Identifier }),
		TSParameterReference({ TSParameter }),
		TSMethod({ base.Function }),
		TSField({ base.Identifier }),
		TSProperty({ base.Identifier }),
		TSConstructor({ base.Special }),
		TSAnnotation({ base.PreProc }),
		TSAttribute({ base.PreProc }),
		TSNamespace({ base.Include }),
		TSConditional({ base.Conditional }),
		TSRepeat({ base.Repeat }),
		TSLabel({ base.Label }),
		TSOperator({ base.Operator }),
		TSKeyword({ base.Keyword }),
		TSKeywordFunction({ base.Keyword }),
		TSKeywordOperator({ TSOperator }),
		TSException({ base.Exception }),
		TSType({ base.Type }),
		TSTypeBuiltin({ base.Type }),
		TSInclude({ base.Include }),
		TSVariableBuiltin({ base.Special }),
		TSText({ TSNone }),
		TSStrong({ gui = styles.bold }),
		TSEmphasis({ gui = styles.italic_strings }),
		TSUnderline({ gui = styles.underline }),
		TSComment({ base.Comment }),
		TSStructure({ base.ErrantOrange }),
		TSTag({ base.ErrantOrange }),
		TSTagDelimiter({ base.ErrantGreen }),

		-- telescope.nvim
		TelescopeSelection({ base.ErrantOrangeBold }),
		TelescopeSlectionCaret({ base.ErrantRed }),
		TelescopeMultiSelection({ base.ErrantGray }),
		TelescopeNormal({ base.ErrantFg1 }),
		TelescopeBorder({ TelescopeNormal }),
		TelescopePromptBorder({ TelescopeNormal }),
		TelescopeResultsBorder({ TelescopeNormal }),
		TelescopePreviewBorder({ TelescopeNormal }),
		TelescopeMatching({ base.ErrantBlue }),
		TelescopePromptPrefix({ base.ErrantRed }),
		TelescopePrompt({ TelescopeNormal }),
		-- lspsaga.nvim
		LspSagaDiagnosticBorder({ base.NormalNC }),
		LspSagaDiagnosticHeader({ base.ErrantRed }),
		LspSagaDiagnosticTruncateLine({ base.NormalNC }),
		LspFloatWinBorder({ base.NormalNC }),
		LspSagaBorderTitle({ base.Title }),
		TargetWord({ base.Error }),
		ReferencesCount({ base.Title }),
		ReferencesIcon({ base.Special }),
		DefinitionCount({ base.Title }),
		TargetFileName({ base.Comment }),
		DefinitionIcon({ base.Special }),
		ProviderTruncateLine({ base.NormalNC }),
		SagaShadow({ base.ErrantBg0 }),
		LspSagaFinderSelection({ base.Search }),
		DiagnosticTruncateLine({ base.NormalNC }),
		DiagnosticWarning({ base.DiagnosticWarn }),
		DiagnosticInformation({ base.DiagnosticInfo }),
		DefinitionPreviewTitle({ base.Title }),
		LspSagaShTruncateLine({ base.NormalNC }),
		LspSagaDocTruncateLine({ base.NormalNC }),
		LineDiagTuncateLine({ base.NormalNC }),
		LspSagaCodeActionTitle({ base.Title }),
		LspSagaCodeActionTruncateLine({ base.NormalNC }),
		LspSagaCodeActionContent({ base.Normal }),
		LspSagaRenamePromptPrefix({ base.ErrantFg2 }),
		LspSagaRenameBorder({ gui = styles.bold }),
		LspSagaHoverBorder({ gui = styles.bold }),
		LspSagaSignatureHelpBorder({ gui = styles.bold }),
		LspSagaCodeActionBorder({ gui = styles.bold }),
		LspSagaAutoPreview({}),
		LspSagaDefPreviewBorder({ gui = styles.bold }),
		LspLinesDiagBorder({ gui = styles.bold }),
		-- vim-startify
		StartifyBracket({ base.Delimiter }),
		StartifyFile({ base.Identifier }),
		StartifyNumber({ base.Number }),
		StartifyPath({ base.Directory }),
		StartifySlash({ base.Delimiter }),
		StartifySection({ base.Statement }),
		StartifySpecial({ base.Comment }),
		StartifyHeader({ base.Title }),
		StartifyFooter({ base.Title }),
		StartifyVar({ StartifyPath }),
		StartifySelect({ base.Title }),
		-- vim-signify
		SignifySignAdd({ base.ErrantGreenSign }),
		SignifySignChange({ base.ErrantAquaSign }),
		SignifySignDelete({ base.ErrantRedSign }),
		-- syntastic
		SyntasticError({ base.ErrantRedUnderline }),
		SyntasticWarning({ base.ErrantYellowUnderline }),
		SyntasticErrorSign({ base.ErrantRedSign }),
		SyntasticWarningSign({ base.ErrantYellowSign }),
		-- termdebug
		debugPC({ bg = colors.faded_blue }),
		debugBreakpoint({ base.ErrantRedSign }),
		-- vim-dirvish
		DirvishPathTail({ base.ErrantAqua }),
		DirvishArg({ base.ErrantYellow }),
		-- nerdtree
		NERDTreeDir({ base.ErrantAqua }),
		NERDTreeDirSlash({ base.ErrantAqua }),
		NERDTreeOpenable({ base.ErrantOrange }),
		NERDTreeClosable({ base.ErrantOrange }),
		NERDTreeFile({ base.ErrantFg1 }),
		NERDTreeExecFile({ base.ErrantYellow }),
		NERDTreeUp({ base.ErrantGray }),
		NERDTreeCWD({ base.ErrantGreen }),
		NERDTreeHelp({ base.ErrantFg1 }),
		NERDTreeToggleOn({ base.ErrantGreen }),
		NERDTreeToggleOff({ base.ErrantRed }),
		-- coc.nvim
		CocErrorSign({ base.ErrantRedSign }),
		CocWarningSign({ base.ErrantOrangeSign }),
		CocInfoSign({ base.ErrantBlueSign }),
		CocHintSign({ base.ErrantAquaSign }),
		CocErrorFloat({ base.ErrantRed }),
		CocWarningFloat({ base.ErrantOrange }),
		CocInfoFloat({ base.ErrantBlue }),
		CocHintFloat({ base.ErrantAqua }),
		CocDiagnosticsError({ base.ErrantRed }),
		CocDiagnosticsWarning({ base.ErrantOrange }),
		CocDiagnosticsInfo({ base.ErrantBlue }),
		CocDiagnosticsHint({ base.ErrantAqua }),
		CocSelectedText({ base.ErrantRed }),
		CocCodeLens({ base.ErrantGray }),
		CocErrorHighlight({ base.ErrantRedUnderline }),
		CocWarningHighlight({ base.ErrantOrangeUnderline }),
		CocInfoHighlight({ base.ErrantBlueUnderline }),
		CocHintHighlight({ base.ErrantAquaUnderline }),
		-- ale.vim
		ALEError({ base.ErrantRedUnderline }),
		ALEWarning({ base.ErrantYellowUnderline }),
		ALEInfo({ base.ErrantBlueUnderline }),
		ALEErrorSign({ base.ErrantRedSign }),
		ALEWarningSign({ base.ErrantYellowSign }),
		ALEInfoSign({ base.ErrantBlueSign }),
		ALEVirtualTextError({ base.ErrantRed }),
		ALEVirtualTextWarning({ base.ErrantYellow }),
		ALEVirtualTextInfo({ base.ErrantBlue }),
		-- vim-buftabline
		BufTabLineCurrent({ base.TabLineSel }),
		BufTabLineActive({ base.PmenuSel }),
		BufTabLineHidden({ base.TabLine }),
		BufTabLineFill({ base.TabLineFill }),
		BufTabLineModifiedCurrent({ BufTabLineCurrent }),
		BufTabLineModifiedActive({ BufTabLineActive }),
		BufTabLineModifiedHidden({ BufTabLineHidden }),
		-- ctrlP
		CtrlPMatch({ base.Identifier }),
		CtrlPNoEntries({ base.Error }),
		CtrlPPrtBase({ base.Comment }),
		CtrlPPrtCursor({ base.Constant }),
		CtrlPLinePre({ fg = base.ErrantBg2.fg.hex }),
		CtrlPMode1({ base.Character }),
		CtrlPMode2({ base.LineNr }),
		CtrlPStats({ base.Function }),
		-- fzf.vim
		Fzf1({ fg = base.ErrantBlue.fg.hex, bg = base.ErrantBg1.fg.hex }),
		Fzf2({ fg = base.ErrantOrange.fg.hex, bg = base.ErrantBg1.fg.hex }),
		Fzf3({ fg = base.ErrantFg4.fg.hex, bg = base.ErrantBg1.fg.hex }),
		ShowMarksHLl({ base.ErrantBlueSign }),
		ShowMarksHLu({ base.ErrantBlueSign }),
		ShowMarksHLo({ base.ErrantBlueSign }),
		ShowMarksHLm({ base.ErrantBlueSign }),
		-- git-gutter
		GitGutterAdd({ base.ErrantGreenSign }),
		GitGutterChange({ base.ErrantAquaSign }),
		GitGutterDelete({ base.ErrantRedSign }),
		GitGutterChangeDelete({ base.ErrantAquaSign }),
		-- gitsigns.nvim
		GitSignsAdd({ base.ErrantGreenSign }),
		GitSignsChange({ base.ErrantAquaSign }),
		GitSignsDelete({ base.ErrantRedSign }),
		GitSignsCurrentLineBlame({ base.NonText }),
		-- nvim-cmp
		CmpItemAbbr({ base.ErrantFg0 }),
		CmpItemAbbrDeprecated({ base.ErrantFg0 }),
		CmpItemAbbrMatch({ base.ErrantBlue }),
		CmpItemAbbrMatchFuzzy({ base.ErrantAqua }),
		CmpItemAbbrMatchFuzzy({ gui = styles.underline, fg = base.ErrantBlue.fg.hex }),
		CmpItemKind({ base.ErrantOrange }),
		CmpItemKindClass({ base.ErrantGreen }),
		CmpItemKindConstructor({ base.ErrantGreen }),
		CmpItemKindField({ base.ErrantAqua }),
		CmpItemKindFile({ base.ErrantOrange }),
		CmpItemKindFolder({ base.ErrantOrange }),
		CmpItemKindFunction({ base.ErrantPurple }),
		CmpItemKindInterface({ base.ErrantGreen }),
		CmpItemKindKeyword({ base.Keyword }),
		CmpItemKindMethod({ base.ErrantPurple }),
		CmpItemKindSnippet({ base.ErrantYellow }),
		CmpItemKindText({ base.ErrantFg0 }),
		CmpItemKindValue({ base.ErrantOrange }),
		CmpItemKindVariable({ base.ErrantBlue }),
		CmpItemMenu({ base.ErrantGray }),
		-- LSP
		LspCodeLens({ base.ErrantGray }),
		LspReferenceRead({ bg = base.ErrantBg2.fg.hex, gui = styles.underline }),
		LspReferenceText({ bg = base.ErrantBg2.fg.hex, gui = styles.underline }),
		LspReferenceWrite({ bg = base.ErrantBg2.fg.hex, gui = styles.underline }),
		-- NOTE: Deprecated settings (see https://github.com/neovim/neovim/pull/15585)
		LspDiagnosticsDefaultError({ base.ErrantRed }),
		LspDiagnosticsSignError({ base.ErrantRedSign }),
		LspDiagnosticsUnderlineError({ base.ErrantRedUnderline }),
		LspDiagnosticsDefaultWarning({ base.ErrantYellow }),
		LspDiagnosticsSignWarning({ base.ErrantYellowSign }),
		LspDiagnosticsUnderlineWarning({ base.ErrantYellowUnderline }),
		LspDiagnosticsDefaultInformation({ base.ErrantBlue }),
		LspDiagnosticsSignInformation({ base.ErrantBlueSign }),
		LspDiagnosticsUnderlineInformation({ base.ErrantBlueUnderline }),
		LspDiagnosticsDefaultHint({ base.ErrantAqua }),
		LspDiagnosticsSignHint({ base.ErrantAquaSign }),
		LspDiagnosticsUnderlineHint({ base.ErrantAquaUnderline }),
		LspDiagnosticsFloatingError({ base.ErrantRed }),
		LspDiagnosticsFloatingWarning({ base.ErrantOrange }),
		LspDiagnosticsFloatingInformation({ base.ErrantBlue }),
		LspDiagnosticsFloatingHint({ base.ErrantAqua }),
		LspDiagnosticsVirtualTextError({ base.ErrantRed }),
		LspDiagnosticsVirtualTextWarning({ base.ErrantYellow }),
		LspDiagnosticsVirtualTextInformation({ base.ErrantBlue }),
		LspDiagnosticsVirtualTextHint({ base.ErrantAqua }),
		-- Diagnostic
		DiagnosticError({ base.ErrantRed }),
		DiagnosticSignError({ base.ErrantRedSign }),
		DiagnosticUnderlineError({ base.ErrantRedUnderline }),
		DiagnosticWarn({ base.ErrantYellow }),
		DiagnosticSignWarn({ base.ErrantYellowSign }),
		DiagnosticUnderlineWarn({ base.ErrantYellowUnderline }),
		DiagnosticInfo({ base.ErrantBlue }),
		DiagnosticSignInfo({ base.ErrantBlueSign }),
		DiagnosticUnderlineInfo({ base.ErrantBlueUnderline }),
		DiagnosticHint({ base.ErrantAqua }),
		DiagnosticSignHint({ base.ErrantAquaSign }),
		DiagnosticUnderlineHint({ base.ErrantAquaUnderline }),
		DiagnosticFloatingError({ base.ErrantRed }),
		DiagnosticFloatingWarn({ base.ErrantOrange }),
		DiagnosticFloatingInfo({ base.ErrantBlue }),
		DiagnosticFloatingHint({ base.ErrantAqua }),
		DiagnosticVirtualTextError({ base.ErrantRed }),
		DiagnosticVirtualTextWarn({ base.ErrantYellow }),
		DiagnosticVirtualTextInfo({ base.ErrantBlue }),
		DiagnosticVirtualTextHint({ base.ErrantAqua }),
		-- mail.vim
		mailQuoted1({ base.ErrantAqua }),
		mailQuoted2({ base.ErrantPurple }),
		mailQuoted3({ base.ErrantYellow }),
		mailQuoted4({ base.ErrantGreen }),
		mailQuoted5({ base.ErrantRed }),
		mailQuoted6({ base.ErrantOrange }),
		mailSignature({ base.Comment }),
	}
end)

return plugins
