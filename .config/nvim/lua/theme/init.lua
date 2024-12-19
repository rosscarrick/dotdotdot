local _ = require("theme.groups")

_.base("Normal", "TabLineFill")
_.fg(
  "Function",
  "@variable",
  "Directory",
  "LineNr",

  -- css
  "cssAtRule",
  "cssTagName",

  -- ts
  "@lsp.type.type.typescriptreact",
  "typescriptObjectStaticMethod",
  "@lsp.type.type.typescriptreact",
  "typescriptPredefinedType"
)
_.fg_bold("@lsp.typemod.variable.declaration.typescriptreact")
-- sdads

_.primary("String", "@keyword.vim", "cssCustomProp", "markdownCodeBlock")
_.secondary(
  "@number.lua",

  -- md
  "markdownH1",
  "markdownH2",
  "markdownH3",
  "markdownH4",
  "markdownH5",
  "markdownH6",
  "markdownCode",

  --css
  "cssValueNumber",
  "cssValueAngle",

  -- ts
  "typescriptMagicComment"
)

_.tertiary("@boolean.lua", "Boolean")

_.subtle(
  "Statement",
  "Special",
  "Identifier",
  "Type",

  -- md
  "markdownLinkTextDelimiter",

  -- ts
  "typescriptObjectLiteral",
  "typescriptFuncCallArg",
  "typescriptParens",
  "typescriptCall",
  "typescriptObjectColon",
  "typescriptTypeBrackets",
  "typescriptTypeAnnotation",

  -- css
  "cssClassNameDot",
  "cssUnitDecorators"
)

_.subtler(
  "Delimiter",
  "Operator",
  "Noise",

  -- md
  "markdownUrl",

  -- ts
  "typescriptFuncComma",
  "typescriptBraces",
  "tsxCloseString",
  "tsxEqual",

  -- html
  "htmlTag",

  -- css
  "cssBraces"
)

_.subtlest(
  "Comment",
  "LineNrAbove",
  "LineNrBelow",
  "markdownLinkDelimiter",
  "TabLine",
  "Folded"
)

_.warning("DiagnosticUnnecessary", "DiagnosticUnderlineWarn")
_.danger("DiagnosticError", "DiagnosticUnderlineError")
