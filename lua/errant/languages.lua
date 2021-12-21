-- language specific higlights
local lush = require("lush")
local base = require("errant.base")
local styles = require("errant.settings").styles
local table_concat = table.concat

-- golang
local golang = lush(function()
  return {
    goDirective({ base.ErrantAqua }),
    goConstants({ base.ErrantPurple }),
    goDeclaration({ base.ErrantRed }),
    goDeclType({ base.ErrantBlue }),
    goBuiltins({ base.ErrantOrange }),
  }
end)

-- java
local java = lush(function()
  return {
    javaAnnotation({ base.ErrantBlue }),
    javaDocTags({ base.ErrantAqua }),
    javaCommentTitle({ base.Comment }),
    javaParen({ base.ErrantFg3 }),
    javaParen1({ base.ErrantFg3 }),
    javaParen2({ base.ErrantFg3 }),
    javaParen3({ base.ErrantFg3 }),
    javaParen4({ base.ErrantFg3 }),
    javaParen5({ base.ErrantFg3 }),
    javaOperator({ base.ErrantOrange }),
  }
end)

-- xml
local xml = lush(function()
  return {
    xmlTag({ base.ErrantAquaBold }),
    xmlEndTag({ base.ErrantAquaBold }),
    xmlTagName({ base.ErrantBlue }),
    xmlEqual({ base.ErrantBlue }),
    docbkKeyword({ base.ErrantAquaBold }),
    xmlDocTypeDecl({ base.ErrantGray }),
    xmlDocTypeKeyword({ base.ErrantPurple }),
    xmlCdataStart({ base.ErrantGray }),
    xmlCdataCdata({ base.ErrantPurple }),
    dtdFunction({ base.ErrantGray }),
    dtdTagName({ base.ErrantPurple }),
    xmlAttrib({ base.ErrantOrange }),
    xmlProcessingDelim({ base.ErrantGray }),
    dtdParamEntityPunct({ base.ErrantGray }),
    dtdParamEntityDPunct({ base.ErrantGray }),
    xmlAttribPunct({ base.ErrantGray }),
    xmlEntity({ base.ErrantRed }),
    xmlEntityPunct({ base.ErrantRed }),
  }
end)

local viml = lush(function()
  return {
    vimNotation({ base.ErrantOrange }),
    vimBracket({ base.ErrantOrange }),
    vimMapModKey({ base.ErrantOrange }),
    vimFuncSID({ base.ErrantFg3 }),
    vimSetSep({ base.ErrantFg3 }),
    vimSep({ base.ErrantFg3 }),
    vimContinue({ base.ErrantFg3 }),
  }
end)

local c = lush(function()
  return {
    cOperator({ base.ErrantPurple }),
    cppOperator({ base.ErrantPurple }),
    cStructure({ base.ErrantOrange }),
  }
end)

local python = lush(function()
  return {
    pythonBuiltin({ base.ErrantOrange }),
    pythonBuiltinObj({ base.ErrantOrange }),
    pythonBuiltinFunc({ base.ErrantOrange }),
    pythonFunction({ base.ErrantAqua }),
    pythonDecorator({ base.ErrantRed }),
    pythonInclude({ base.ErrantBlue }),
    pythonImport({ base.ErrantBlue }),
    pythonRun({ base.ErrantBlue }),
    pythonCoding({ base.ErrantBlue }),
    pythonOperator({ base.ErrantRed }),
    pythonException({ base.ErrantRed }),
    pythonExceptions({ base.ErrantPurple }),
    pythonBoolean({ base.ErrantPurple }),
    pythonDot({ base.ErrantFg3 }),
    pythonConditional({ base.ErrantRed }),
    pythonRepeat({ base.ErrantRed }),
    pythonDottedName({ base.ErrantGreenBold }),
  }
end)

local clojure = lush(function()
  return {
    clojureKeyword({ base.ErrantBlue }),
    clojureCond({ base.ErrantOrange }),
    clojureSpecial({ base.ErrantOrange }),
    clojureDefine({ base.ErrantOrange }),
    clojureFunc({ base.ErrantYellow }),
    clojureRepeat({ base.ErrantYellow }),
    clojureCharacter({ base.ErrantAqua }),
    clojureStringEscape({ base.ErrantAqua }),
    clojureException({ base.ErrantRed }),
    clojureRegexp({ base.ErrantAqua }),
    clojureRegexpEscape({ base.ErrantAqua }),
    clojureParen({ base.ErrantFg3 }),
    clojureAnonArg({ base.ErrantYellow }),
    clojureVariable({ base.ErrantBlue }),
    clojureMacro({ base.ErrantOrange }),
    clojureMeta({ base.ErrantYellow }),
    clojureDeref({ base.ErrantYellow }),
    clojureQuote({ base.ErrantYellow }),
    clojureUnquote({ base.ErrantYellow }),
    clojureRegexpCharClass({ fg = base.ErrantFg3.fg.hex, gui = styles.bold }),
    clojureRegexpMod({ clojureRegexpCharClass }),
    clojureRegexpQuantifier({ clojureRegexpCharClass }),
  }
end)

local html = lush(function()
  return {
    htmlTag({ base.ErrantAquaBold }),
    htmlEndTag({ base.ErrantAquaBold }),
    htmlTagName({ base.ErrantBlue }),
    htmlArg({ base.ErrantOrange }),
    htmlScriptTag({ base.ErrantPurple }),
    htmlTagN({ base.ErrantFg1 }),
    htmlSpecialTagName({ base.ErrantBlue }),
    htmlSpecialChar({ base.ErrantRed }),
    htmlLink({ fg = base.ErrantFg4.fg.hex, gui = styles.underline }),
    htmlBold({ fg = base.ErrantFg1.fg.hex, gui = styles.bold }),
    htmlBoldUnderline({
      fg = base.ErrantFg1.fg.hex,
      gui = table_concat({ styles.bold, styles.underline }, ","),
    }),
    htmlBoldItalic({
      fg = base.ErrantFg1.fg.hex,
      gui = table_concat({ styles.bold, styles.italic_strings }, ","),
    }),
    htmlBoldUnderlineItalic({
      fg = base.ErrantFg1.fg.hex,
      gui = table_concat({ styles.bold, styles.italic_strings }, ","),
    }),
    htmlItalic({ fg = base.ErrantFg1.fg.hex, gui = styles.italic_strings }),
  }
end)

local css = lush(function()
  return {
    cssBraces({ base.ErrantBlue }),
    cssFunctionName({ base.ErrantYellow }),
    cssIdentifier({ base.ErrantOrange }),
    cssClassName({ base.ErrantGreen }),
    cssColor({ base.ErrantBlue }),
    cssSelectorOp({ base.ErrantBlue }),
    cssSelectorOp2({ base.ErrantBlue }),
    cssImportant({ base.ErrantGreen }),
    cssVendor({ base.ErrantFg1 }),
    cssTextProp({ base.ErrantAqua }),
    cssAnimationProp({ base.ErrantAqua }),
    cssUIProp({ base.ErrantYellow }),
    cssTransformProp({ base.ErrantAqua }),
    cssTransitionProp({ base.ErrantAqua }),
    cssPrintProp({ base.ErrantAqua }),
    cssPositioningProp({ base.ErrantYellow }),
    cssBoxProp({ base.ErrantAqua }),
    cssFontDescriptorProp({ base.ErrantAqua }),
    cssFlexibleBoxProp({ base.ErrantAqua }),
    cssBorderOutlineProp({ base.ErrantAqua }),
    cssBackgroundProp({ base.ErrantAqua }),
    cssMarginProp({ base.ErrantAqua }),
    cssListProp({ base.ErrantAqua }),
    cssTableProp({ base.ErrantAqua }),
    cssFontProp({ base.ErrantAqua }),
    cssPaddingProp({ base.ErrantAqua }),
    cssDimensionProp({ base.ErrantAqua }),
    cssRenderProp({ base.ErrantAqua }),
    cssColorProp({ base.ErrantAqua }),
    cssGeneratedContentProp({ base.ErrantAqua }),
  }
end)

local js = lush(function()
  return {
    javaScriptBraces({ base.ErrantFg1 }),
    javaScriptFunction({ base.ErrantAqua }),
    javaScriptIdentifier({ base.ErrantRed }),
    javaScriptMember({ base.ErrantBlue }),
    javaScriptNumber({ base.ErrantPurple }),
    javaScriptNull({ base.ErrantPurple }),
    javaScriptParens({ base.ErrantFg3 }),
    javascriptImport({ base.ErrantAqua }),
    javascriptExport({ base.ErrantAqua }),
    javascriptClassKeyword({ base.ErrantAqua }),
    javascriptClassExtends({ base.ErrantAqua }),
    javascriptDefault({ base.ErrantAqua }),
    javascriptClassName({ base.ErrantYellow }),
    javascriptClassSuperName({ base.ErrantYellow }),
    javascriptGlobal({ base.ErrantYellow }),
    javascriptEndColons({ base.ErrantFg1 }),
    javascriptFuncArg({ base.ErrantFg1 }),
    javascriptGlobalMethod({ base.ErrantFg1 }),
    javascriptNodeGlobal({ base.ErrantFg1 }),
    javascriptBOMWindowProp({ base.ErrantFg1 }),
    javascriptArrayMethod({ base.ErrantFg1 }),
    javascriptArrayStaticMethod({ base.ErrantFg1 }),
    javascriptCacheMethod({ base.ErrantFg1 }),
    javascriptDateMethod({ base.ErrantFg1 }),
    javascriptMathStaticMethod({ base.ErrantFg1 }),
    javascriptProp({ base.ErrantFg1 }),
    javascriptURLUtilsProp({ base.ErrantFg1 }),
    javascriptBOMNavigatorProp({ base.ErrantFg1 }),
    javascriptDOMDocMethod({ base.ErrantFg1 }),
    javascriptDOMDocProp({ base.ErrantFg1 }),
    javascriptBOMLocationMethod({ base.ErrantFg1 }),
    javascriptBOMWindowMethod({ base.ErrantFg1 }),
    javascriptStringMethod({ base.ErrantFg1 }),
    javascriptVariable({ base.ErrantOrange }),
    javascriptClassSuper({ base.ErrantOrange }),
    javascriptFuncKeyword({ base.ErrantAqua }),
    javascriptAsyncFunc({ base.ErrantAqua }),
    javascriptClassStatic({ base.ErrantOrange }),
    javascriptOperator({ base.ErrantRed }),
    javascriptForOperator({ base.ErrantRed }),
    javascriptYield({ base.ErrantRed }),
    javascriptExceptions({ base.ErrantRed }),
    javascriptMessage({ base.ErrantRed }),
    javascriptTemplateSB({ base.ErrantAqua }),
    javascriptTemplateSubstitution({ base.ErrantFg1 }),
    javascriptLabel({ base.ErrantFg1 }),
    javascriptObjectLabel({ base.ErrantFg1 }),
    javascriptPropertyName({ base.ErrantFg1 }),
    javascriptLogicSymbols({ base.ErrantFg1 }),
    javascriptArrowFunc({ base.ErrantYellow }),
    javascriptDocParamName({ base.ErrantFg4 }),
    javascriptDocTags({ base.ErrantFg4 }),
    javascriptDocNotation({ base.ErrantFg4 }),
    javascriptDocParamType({ base.ErrantFg4 }),
    javascriptDocNamedParamType({ base.ErrantFg4 }),
    javascriptBrackets({ base.ErrantFg1 }),
    javascriptDOMElemAttrs({ base.ErrantFg1 }),
    javascriptDOMEventMethod({ base.ErrantFg1 }),
    javascriptDOMNodeMethod({ base.ErrantFg1 }),
    javascriptDOMStorageMethod({ base.ErrantFg1 }),
    javascriptHeadersMethod({ base.ErrantFg1 }),
    javascriptAsyncFuncKeyword({ base.ErrantRed }),
    javascriptAwaitFuncKeyword({ base.ErrantRed }),
    jsClassKeyword({ base.ErrantAqua }),
    jsExtendsKeyword({ base.ErrantAqua }),
    jsExportDefault({ base.ErrantAqua }),
    jsTemplateBraces({ base.ErrantAqua }),
    jsGlobalNodeObjects({ base.ErrantBlue }),
    jsGlobalObjects({ base.ErrantBlue }),
    jsObjectKey({ base.ErrantGreenBold }),
    jsFunction({ base.ErrantAqua }),
    jsFuncCall({ base.ErrantBlue }),
    jsFuncParens({ base.ErrantFg3 }),
    jsParens({ base.ErrantFg3 }),
    jsNull({ base.ErrantPurple }),
    jsUndefined({ base.ErrantPurple }),
    jsClassDefinition({ base.ErrantYellow }),
    jsOperatorKeyword({ base.ErrantRed }),
  }
end)

local typescript = lush(function()
  return {
    typescriptReserved({ base.ErrantAqua }),
    typescriptLabel({ base.ErrantAqua }),
    typescriptFuncKeyword({ base.ErrantAqua }),
    typescriptIdentifier({ base.ErrantOrange }),
    typescriptBraces({ base.ErrantOrange }),
    typescriptEndColons({ base.ErrantFg1 }),
    typescriptDOMObjects({ base.ErrantFg1 }),
    typescriptAjaxMethods({ base.ErrantFg1 }),
    typescriptLogicSymbols({ base.ErrantOrange }),
    typescriptDocSeeTag({ base.Comment }),
    typescriptDocParam({ base.Comment }),
    typescriptDocTags({ base.Comment }),
    typescriptGlobalObjects({ base.ErrantFg1 }),
    typescriptParens({ base.ErrantOrange }),
    typescriptOpSymbols({ base.ErrantOrange }),
    typescriptHtmlElemProperties({ base.ErrantFg1 }),
    typescriptNull({ base.ErrantPurple }),
    typescriptInterpolationDelimiter({ base.ErrantAqua }),
    typescriptArrowFunc({ base.ErrantFg1 }),
    typescriptCharacter({ base.ErrantOrange }),
    typescriptUnion({ base.ErrantOrange }),
    typescriptDotNotation({ base.ErrantOrange }),
    typescriptGlobalObjectDot({ typescriptDotNotation }),
  }
end)

local jsx = lush(function()
  return {
    jsxTagName({ base.ErrantAqua }),
    jsxComponentName({ base.ErrantGreen }),
    jsxCloseString({ base.ErrantFg4 }),
    jsxAttrib({ base.ErrantYellow }),
    jsxEqual({ base.ErrantAqua }),
  }
end)

local purescript = lush(function()
  return {
    purescriptModuleKeyword({ base.ErrantAqua }),
    purescriptModuleName({ base.ErrantFg1 }),
    purescriptWhere({ base.ErrantAqua }),
    purescriptDelimiter({ base.ErrantFg4 }),
    purescriptType({ base.ErrantFg1 }),
    purescriptImportKeyword({ base.ErrantAqua }),
    purescriptHidingKeyword({ base.ErrantAqua }),
    purescriptAsKeyword({ base.ErrantAqua }),
    purescriptStructure({ base.ErrantAqua }),
    purescriptOperator({ base.ErrantBlue }),
    purescriptTypeVar({ base.ErrantFg1 }),
    purescriptConstructor({ base.ErrantFg1 }),
    purescriptFunction({ base.ErrantFg1 }),
    purescriptConditional({ base.ErrantOrange }),
    purescriptBacktick({ base.ErrantOrange }),
  }
end)

local coffeescript = lush(function()
  return {
    coffeeExtendedOp({ base.ErrantFg3 }),
    coffeeSpecialOp({ base.ErrantFg3 }),
    coffeeCurly({ base.ErrantOrange }),
    coffeeParen({ base.ErrantFg3 }),
    coffeeBracket({ base.ErrantOrange }),
  }
end)

local ruby = lush(function()
  return {
    rubyStringDelimiter({ base.ErrantGreen }),
    rubyInterpolationDelimiter({ base.ErrantAqua }),
  }
end)

local objc = lush(function()
  return { objcTypeModifier({ base.ErrantRed }), objcDirective({ base.ErrantBlue }) }
end)

local moonscript = lush(function()
  return {
    moonSpecialOp({ base.ErrantFg3 }),
    moonExtendedOp({ base.ErrantFg3 }),
    moonFunction({ base.ErrantFg3 }),
    moonObject({ base.ErrantYellow }),
  }
end)

local elixir = lush(function()
  return {
    elixirDocString({ base.Comment }),
    elixirStringDelimiter({ base.ErrantGreen }),
    elixirInterpolationDelimiter({ base.ErrantAqua }),
    elixirModuleDeclaration({ base.ErrantYellow }),
  }
end)

local scala = lush(function()
  return {
    scalaNameDefinition({ base.ErrantFg1 }),
    scalaCaseFollowing({ base.ErrantFg1 }),
    scalaCapitalWord({ base.ErrantFg1 }),
    scalaTypeExtension({ base.ErrantFg1 }),
    scalaKeyword({ base.ErrantRed }),
    scalaKeywordModifier({ base.ErrantRed }),
    scalaSpecial({ base.ErrantAqua }),
    scalaOperator({ base.ErrantFg1 }),
    scalaTypeDeclaration({ base.ErrantYellow }),
    scalaTypeTypePostDeclaration({ base.ErrantYellow }),
    scalaInstanceDeclaration({ base.ErrantFg1 }),
    scalaInterpolation({ base.ErrantAqua }),
  }
end)

local markdown = lush(function()
  return {
    markdownItalic({ fg = base.ErrantFg3.fg.hex, gui = styles.italic }),
    markdownBold({ fg = base.ErrantFg3.fg.hex, gui = styles.bold }),
    markdownBoldItalic({
      fg = base.ErrantFg3.fg.hex,
      gui = table_concat({ styles.bold, styles.italic }, ","),
    }),
    markdownH1({ base.ErrantGreenBold }),
    markdownH2({ markdownH1 }),
    markdownH3({ base.ErrantYellowBold }),
    markdownH4({ markdownH3 }),
    markdownH5({ base.ErrantYellow }),
    markdownH6({ markdownH5 }),
    markdownCode({ base.ErrantAqua }),
    markdownCodeBlock({ base.ErrantAqua }),
    markdownCodeDelimiter({ base.ErrantAqua }),
    markdownBlockquote({ base.ErrantGray }),
    markdownListMarker({ base.ErrantGray }),
    markdownOrderedListMarker({ base.ErrantGray }),
    markdownRule({ base.ErrantGray }),
    markdownHeadingRule({ base.ErrantGray }),
    markdownUrlDelimiter({ base.ErrantFg3 }),
    markdownLinkDelimiter({ base.ErrantFg3 }),
    markdownLinkTextDelimiter({ base.ErrantFg3 }),
    markdownHeadingDelimiter({ base.ErrantOrange }),
    markdownUrl({ base.ErrantPurple }),
    markdownUrlTitleDelimiter({ base.ErrantGreen }),
    markdownLinkText({ fg = base.ErrantGray.fg.hex, gui = styles.underline }),
    markdownIdDeclaration({ markdownLinkText }),
  }
end)

local haskell = lush(function()
  return {
    haskellType({ base.ErrantBlue }),
    haskellIdentifier({ base.ErrantAqua }),
    haskellSeparator({ base.ErrantFg4 }),
    haskellDelimiter({ base.ErrantOrange }),
    haskellOperators({ base.ErrantPurple }),
    haskellBacktick({ base.ErrantOrange }),
    haskellStatement({ base.ErrantPurple }),
    haskellConditional({ base.ErrantPurple }),
    haskellLet({ base.ErrantRed }),
    haskellDefault({ base.ErrantRed }),
    haskellWhere({ base.ErrantRed }),
    haskellBottom({ base.ErrantRedBold }),
    haskellImportKeywords({ base.ErrantPurpleBold }),
    haskellDeclKeyword({ base.ErrantOrange }),
    haskellDecl({ base.ErrantOrange }),
    haskellDeriving({ base.ErrantPurple }),
    haskellAssocType({ base.ErrantAqua }),
    haskellNumber({ base.ErrantAqua }),
    haskellPragma({ base.ErrantRedBold }),
    haskellTH({ base.ErrantAquaBold }),
    haskellForeignKeywords({ base.ErrantGreen }),
    haskellKeyword({ base.ErrantRed }),
    haskellFloat({ base.ErrantAqua }),
    haskellInfix({ base.ErrantPurple }),
    haskellQuote({ base.ErrantGreenBold }),
    haskellShebang({ base.ErrantYellowBold }),
    haskellLiquid({ base.ErrantPurpleBold }),
    haskellQuasiQuoted({ base.ErrantBlueBold }),
    haskellRecursiveDo({ base.ErrantPurple }),
    haskellQuotedType({ base.ErrantRed }),
    haskellPreProc({ base.ErrantFg4 }),
    haskellTypeRoles({ base.ErrantRedBold }),
    haskellTypeForall({ base.ErrantRed }),
    haskellPatternKeyword({ base.ErrantBlue }),
  }
end)

local json = lush(function()
  return {
    jsonKeyword({ base.ErrantGreen }),
    jsonQuote({ base.ErrantGreen }),
    jsonBraces({ base.ErrantFg1 }),
    jsonString({ base.ErrantFg1 }),
  }
end)

local csharp = lush(function()
  return {
    csBraces({ base.ErrantFg1 }),
    csEndColon({ base.ErrantFg1 }),
    csLogicSymbols({ base.ErrantFg1 }),
    csParens({ base.ErrantFg3 }),
    csOpSymbols({ base.ErrantFg3 }),
    csInterpolationDelimiter({ base.ErrantFg3 }),
    csInterpolationAlignDel({ base.ErrantAquaBold }),
    csInterpolationFormat({ base.ErrantAqua }),
    csInterpolationFormatDel({ base.ErrantAquaBold }),
  }
end)

local rust = lush(function()
  return {
    rustSigil({ base.ErrantOrange }),
    rustEscape({ base.ErrantAqua }),
    rustStringContinuation({ base.ErrantAqua }),
    rustEnum({ base.ErrantAqua }),
    rustStructure({ base.ErrantAqua }),
    rustModPathSep({ base.ErrantFg2 }),
    rustCommentLineDoc({ base.ErrantOrange }),
    rustCommentBlockDoc({ base.ErrantOrange }),
    rustDefault({ base.ErrantAqua }),
  }
end)

local ocaml = lush(function()
  return {
    ocamlOperator({ base.ErrantFg1 }),
    ocamlKeyChar({ base.ErrantOrange }),
    ocamlArrow({ base.ErrantOrange }),
    ocamlInfixOpKeyword({ base.ErrantRed }),
    ocamlConstructor({ base.ErrantOrange }),
  }
end)

local lua = lush(function()
  return {
    luaIn({ base.ErrantRed }),
    luaFunction({ base.ErrantAqua }),
    luaTable({ base.ErrantOrange }),
  }
end)

local langs = lush.merge({
  golang,
  java,
  xml,
  viml,
  c,
  python,
  clojure,
  html,
  css,
  js,
  typescript,
  jsx,
  purescript,
  coffeescript,
  ruby,
  objc,
  moonscript,
  elixir,
  scala,
  markdown,
  haskell,
  json,
  csharp,
  rust,
  ocaml,
  lua,
})

return langs
