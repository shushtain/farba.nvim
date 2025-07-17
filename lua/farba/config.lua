---@diagnostic disable: inject-field

---@class Farba.Config
---@field light_mode? boolean If `true`, generate a light theme
---@field background? boolean If `false`, make editor background transparent
---@field colors? Colors Color values for the theme

---@class Colors
---@field general? Colors.Full General color values
---@field status? Colors.Status Status color values (diagnostic, git diff, etc)
---@field terminal? Colors.Full Terminal color values
---@field syntax? Colors.Full Syntax color values

---@class Colors.Full
---@field gray? table `{<hue 0-360>, <saturation 0-100+>}`
---@field red? table `{<hue 0-360>, <saturation 0-100+>}`
---@field green? table `{<hue 0-360>, <saturation 0-100+>}`
---@field yellow? table `{<hue 0-360>, <saturation 0-100+>}`
---@field blue? table `{<hue 0-360>, <saturation 0-100+>}`
---@field magenta? table `{<hue 0-360>, <saturation 0-100+>}`
---@field cyan? table `{<hue 0-360>, <saturation 0-100+>}`

---@class Colors.Status
---@field red? table `{<hue 0-360>, <saturation 0-100+>}`
---@field yellow? table `{<hue 0-360>, <saturation 0-100+>}`
---@field green? table `{<hue 0-360>, <saturation 0-100+>}`

---@type Farba.Config
local M = {}

M.defaults = {
  light_mode = false,
  background = true,
  colors = {
    general = {
      gray = { 0, 0 },
      red = { 0, 100 },
      green = { 120, 50 },
      yellow = { 40, 75 },
      blue = { 200, 50 },
      magenta = { 280, 50 },
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

M.options = {}

function M.__setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

return M
