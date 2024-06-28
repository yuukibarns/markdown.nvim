# markdown.nvim

A minimal and fast plugin for the conceal of latex blocks in markdown, forked from `mathjiajia/latex.nvim`.

## Installation

Use `folke/lazy.nvim`:

```lua
{
    "yuukibarns/markdown.nvim"
    config = true,
}
```

## Configuration

To use `markdown.nvim` you need to put

```lua
require("markdown").setup()
```

somewhere in your config. This is equivalent to the following default configuration:

```lua
require("markdown").setup({
    conceals = {
        enabled = {
            "amssymb",
            "core",
            "delim",
            "font",
            "greek",
            "math",
            "script",
        },
    },
})
```
