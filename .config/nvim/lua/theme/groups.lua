local palette = require("theme.palette")

--------------------------------------------
------------------UTILS---------------------
--------------------------------------------
local function createGroup(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

local function link(from, to)
  vim.cmd("hi clear " .. from)
  vim.api.nvim_set_hl(0, from, { link = to })
end

local function linkAll(froms, to)
  for _, from in ipairs(froms) do
    link(from, to)
  end
end

--------------------------------------------
------------------GROUPS--------------------
--------------------------------------------

createGroup("Base", { fg = palette.fg, bg = palette.bg })
createGroup("Foreground", { fg = palette.fg, bg = palette.transparent })
createGroup(
  "ForegroundBold",
  { fg = palette.fg, bg = palette.transparent, bold = true }
)
createGroup("Primary", { fg = palette.primary, bg = palette.transparent })
createGroup("Secondary", { fg = palette.secondary, bg = palette.transparent })
createGroup("Tertiary", { fg = palette.tertiary, bg = palette.transparent })
createGroup("Subtle", { fg = palette.fg_subtle, bg = palette.transparent })
createGroup("Subtler", { fg = palette.fg_sublter, bg = palette.transparent })
createGroup("Subtlest", { fg = palette.fg_subltest, bg = palette.transparent })
createGroup("Danger", { fg = palette.danger, bg = palette.transparent })
createGroup("Warning", { fg = palette.warning, bg = palette.transparent })
createGroup("Success", { fg = palette.success, bg = palette.transparent })

--------------------------------------------
------------------EXPORTS-------------------
--------------------------------------------
local function base(...)
  linkAll({ ... }, "Base")
end

local function fg(...)
  linkAll({ ... }, "Foreground")
end

local function fg_bold(...)
  linkAll({ ... }, "ForegroundBold")
end

local function primary(...)
  linkAll({ ... }, "Primary")
end

local function secondary(...)
  linkAll({ ... }, "Secondary")
end

local function tertiary(...)
  linkAll({ ... }, "Tertiary")
end

local function subtle(...)
  linkAll({ ... }, "Subtle")
end

local function subtler(...)
  linkAll({ ... }, "Subtler")
end

local function subtlest(...)
  linkAll({ ... }, "Subtlest")
end

local function danger(...)
  linkAll({ ... }, "Danger")
end

local function warning(...)
  linkAll({ ... }, "Warning")
end

local function success(...)
  linkAll({ ... }, "Success")
end

return {
  palette = palette,
  base = base,
  fg = fg,
  fg_bold = fg_bold,
  primary = primary,
  secondary = secondary,
  tertiary = tertiary,
  subtle = subtle,
  subtler = subtler,
  subtlest = subtlest,
  danger = danger,
  warning = warning,
  success = success,
}
