# Farba for Neovim

> one theme to have them all  
> one dark for daily driving  
> one blue for city hall  
> and one in light to blind them

Farba is a Neovim theme plugin. It lets you customize colors the theme is built upon, and makes sure the results stay accessible by calculating HEX values from Cubehelix coordinates.

![Example](https://github.com/shushtain/farba.nvim/blob/main/example.gif)

## Setup

Setup is optional but recommended. The primary purpose of the standard theme is to color different groups with different colors, so it becomes obvious how to customize it to your needs. See `:h farba.txt` for details. Here are the defaults:

```lua
---@type Farba.Config
require("farba").setup({
  cache = false,
  mode = nil, -- "light"|"dark" or let 'vim.o.background' decide
  transparency = {
    normal = false, -- `true` to hide background
    float = false, -- `true` to hide floating window background
  },
  palette = {
    general = {
      gray    = { hue = 0,   sat = 0 },
      red     = { hue = 0,   sat = 100 },
      yellow  = { hue = 30,  sat = 75 },
      green   = { hue = 90,  sat = 50 },
      cyan    = { hue = 140, sat = 75 },
      blue    = { hue = 180, sat = 50 },
      magenta = { hue = 280, sat = 35 },
    },
    -- the following use the same structure
    -- missing fields use `general` as fallback
    status = nil,
    terminal = nil,
    syntax = nil,
  },
})
```

I encourage you to start by setting the general palette to your terminal colors and focus on the `syntax` group. For example, I've decided not to use standard blues at all. I find green much easier on the eyes and primarily care about the distinction between variables/properties (blue group) and functions/methods (cyan group). Thus, my own palette looks like this:

```lua
palette = {
  general = {
    gray    = { hue = 0,   sat = 0 },
    red     = { hue = 0,   sat = 100 },
    yellow  = { hue = 30,  sat = 75 },
    green   = { hue = 80,  sat = 50 },
    cyan    = { hue = 150, sat = 50 },
    blue    = { hue = 200, sat = 50 },
    magenta = { hue = 280, sat = 50 }
  },
  syntax = {
    yellow  = { hue = 25,  sat = 75 },
    cyan    = { hue = 0,   sat = 60 },
    blue    = { hue = 80,  sat = 50 },
    magenta = { hue = 80,  sat = 30 }
  }
}
```

## Globals

Another useful feature of the plugin is `vim.g.farba`. Please be mindful that `vim.g.farba` is ready AFTER the colorscheme is set. Don't use it in contexts that come before you initialize the theme. The most reliable pattern is:

```lua
vim.tbl_get(vim.g, "farba", "palette", "general", "gray", "v10") or "#f00f00"
```

This way you won't be troubled if something happens to your `farba`, or if you simply decide to switch to another theme plugin completely.

`vim.g.farba` stores the following:

### cache

Whether caching is enabled.

### mode

At this point the mode is defined. There is no `nil` state. It's either `"light"` or `"dark"`.

### transparency

Same `normal` and `float` fields from your config. Values unchanged.

### palette

Same groups and subgroups. Each subgroup now stores colors instead of `hue` and `sat`. The guaranteed range is `[5:95:5]` (from 5 inclusive to 95 inclusive with step 5). Values are HEX. Keys are in `v%02d` format (`v05`, `v10`, `v55`, etc). Currently also has `v01`, `v99`, and `v13`.

In light mode, the values (not keys) change to their opposites. Your custom element set to `vim.g.palette.general.gray.v05` will become a color with lightness 95 when `mode = "light"`.

## Cache

`farba.nvim` caches themes to shave whopping 42% of total startup time on theme reuse! That's about 4 milliseconds, folks. The next version will be banana-flavored.

The cache is stored in `vim.fn.stdpath("cache") .. "/farba.nvim/"`. You can clear it by calling:

```lua
require("farba").purge()
```

## Credits

- [Dave Green's Cubehelix](https://people.phy.cam.ac.uk/dag9/CUBEHELIX/#Paper)
- [Base16](https://github.com/chriskempson/base16), for inspiring me.
- Countless beautiful themes, for code examples and general approach.
