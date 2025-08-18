---@class Farba.Config
---@field light_mode? boolean If `true`, generate a light theme. Default is `false`
---@field background? boolean If `false`, make editor background transparent. Default is `false`
---@field colors? Farba.Config.Colors Color values to base the theme on

---@class Farba.Config.Colors
---@field general? Farba.Config.Colors.Full General color values
---@field status? Farba.Config.Colors.Status Status color values (diagnostic, git diff, etc)
---@field terminal? Farba.Config.Colors.Full Terminal color values
---@field syntax? Farba.Config.Colors.Full Syntax color values

---@class Farba.Config.Colors.Full
---@field gray? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field red? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field green? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field yellow? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field blue? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field magenta? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field cyan? table|false `{<hue 0-360>, <saturation 0-100+>}`

---@class Farba.Config.Colors.Status
---@field red? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field yellow? table|false `{<hue 0-360>, <saturation 0-100+>}`
---@field green? table|false `{<hue 0-360>, <saturation 0-100+>}`

local M = {}

---@type Farba.Config
M.config = {
  light_mode = false,
  background = true,
  colors = {
    general = {
      gray = { 0, 0 },
      red = { 0, 100 },
      green = { 90, 50 },
      yellow = { 30, 75 },
      blue = { 200, 50 },
      magenta = { 300, 50 },
      cyan = { 150, 50 },
    },
    status = {
      red = false,
      yellow = false,
      green = false,
    },
    terminal = {
      gray = false,
      red = false,
      green = false,
      yellow = false,
      blue = false,
      magenta = false,
      cyan = false,
    },
    syntax = {
      gray = false,
      red = false,
      green = false,
      yellow = false,
      blue = false,
      magenta = false,
      cyan = false,
    },
  },
}

---@param opts? Farba.Config
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

return M
