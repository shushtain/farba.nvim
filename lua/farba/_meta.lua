---@class Farba.Config
---@field cache? boolean If `true`, store HEX colors in `vim.fn.stdpath("cache") .. "/farba.nvim/"`. Default is `false`
---@field mode? Farba.Config.Mode If set, enforce the specified theme variant. Otherwise, rely on `'background'`. Default is `nil`
---@field transparency? Farba.Config.Transparency
---@field palette? Farba.Config.Palette

---@class Farba.Profile
---@field cache boolean
---@field mode Farba.Profile.Mode
---@field transparency Farba.Profile.Transparency
---@field palette Farba.Profile.Palette

---@class Farba.Theme
---@field cache boolean
---@field mode Farba.Theme.Mode
---@field transparency Farba.Theme.Transparency
---@field palette Farba.Theme.Palette

---@alias Farba.Config.Mode "light"|"dark"|vim.NIL
---@alias Farba.Profile.Mode "light"|"dark"
---@alias Farba.Theme.Mode "light"|"dark"

---@class Farba.Config.Transparency
---@field normal? boolean If `true`, make editor background transparent. Default is `false`
---@field float? boolean If `true`, make floating windows transparent. Default is `false`

---@class Farba.Profile.Transparency
---@field normal boolean
---@field float boolean

---@class Farba.Theme.Transparency
---@field normal boolean Is editor background transparent
---@field float boolean Is floating windows background transparent

---@class Farba.Config.Palette
---@field general? Farba.Config.Palette.Base16 Editor UI, etc.
---@field status? Farba.Config.Palette.Base16 Statuses, diagnostics, notifications, etc. Uses
---@field terminal? Farba.Config.Palette.Base16 Terminal, etc.
---@field syntax? Farba.Config.Palette.Base16 Tree-sitter, LSP highlights, etc.

---@class Farba.Profile.Palette
---@field general Farba.Profile.Palette.Base16
---@field status Farba.Profile.Palette.Base16
---@field terminal Farba.Profile.Palette.Base16
---@field syntax Farba.Profile.Palette.Base16

---@class Farba.Theme.Palette
---@field general Farba.Theme.Palette.Base16 Editor UI, etc.
---@field status Farba.Theme.Palette.Base16 Statuses, diagnostics, notifications, etc. Uses
---@field terminal Farba.Theme.Palette.Base16 Terminal, etc.
---@field syntax Farba.Theme.Palette.Base16 Tree-sitter, LSP highlights, etc.

---@class Farba.Config.Palette.Base16
---@field gray? Farba.Config.Palette.Base16.Coords|vim.NIL
---@field red? Farba.Config.Palette.Base16.Coords|vim.NIL
---@field yellow? Farba.Config.Palette.Base16.Coords|vim.NIL
---@field green? Farba.Config.Palette.Base16.Coords|vim.NIL
---@field cyan? Farba.Config.Palette.Base16.Coords|vim.NIL
---@field blue? Farba.Config.Palette.Base16.Coords|vim.NIL
---@field magenta? Farba.Config.Palette.Base16.Coords|vim.NIL

---@class Farba.Profile.Palette.Base16
---@field gray Farba.Profile.Palette.Base16.Coords
---@field red Farba.Profile.Palette.Base16.Coords
---@field yellow Farba.Profile.Palette.Base16.Coords
---@field green Farba.Profile.Palette.Base16.Coords
---@field cyan Farba.Profile.Palette.Base16.Coords
---@field blue Farba.Profile.Palette.Base16.Coords
---@field magenta Farba.Profile.Palette.Base16.Coords

---@class Farba.Theme.Palette.Base16
---@field gray Farba.Theme.Palette.Base16.Colors
---@field red Farba.Theme.Palette.Base16.Colors
---@field yellow Farba.Theme.Palette.Base16.Colors
---@field green Farba.Theme.Palette.Base16.Colors
---@field cyan Farba.Theme.Palette.Base16.Colors
---@field blue Farba.Theme.Palette.Base16.Colors
---@field magenta Farba.Theme.Palette.Base16.Colors

---@class Farba.Config.Palette.Base16.Coords
---@field hue int Hue in range `[0:360]`. Standard representation with red at `0`, green at `120`, and blue at `240`.
---@field sat int Saturation in range `[0:100]` or higher. Cubehelix's `100` is less saturated than in HSL, but can guarantee stable color contrast between two different themes. Higher values are useful for vivid, signal colors.

---@class Farba.Profile.Palette.Base16.Coords
---@field hue int
---@field sat int

---@class Farba.Theme.Palette.Base16.Colors Hex colors in range `[5:95:5]`
---@field v01 string HEX
---@field v05 string HEX
---@field v10 string HEX
---@field v13 string HEX
---@field v15 string HEX
---@field v20 string HEX
---@field v25 string HEX
---@field v30 string HEX
---@field v35 string HEX
---@field v40 string HEX
---@field v45 string HEX
---@field v50 string HEX
---@field v55 string HEX
---@field v60 string HEX
---@field v65 string HEX
---@field v70 string HEX
---@field v75 string HEX
---@field v80 string HEX
---@field v85 string HEX
---@field v90 string HEX
---@field v95 string HEX
---@field v99 string HEX
