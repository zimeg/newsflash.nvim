# newsflash.nvim

Open text front and center in a window `80` columns wide.

```txt
12345678901234567890123456789012345678901234567890123456789012345678901234567890
```

## Demo

Read along wrapping text:

https://github.com/user-attachments/assets/6daab9cc-f03e-41f9-b90a-452e7c013ada

## Setup

Install this plugin using a plugin manager of choice and `toggle` the plugin:

```lua
local newsflash = require("newsflash")

vim.keymap.set("n", "<leader>q", newsflash.toggle)
```

## Recommendation

> Configurations to cursor movement are **not** done with this plugin!

Jumping "up" or "down" relative lines with wrapped text is confusing when some lines are skipped.

These mappings jump between lines one at a time:

```lua
vim.keymap.set("n", "j", "gj")
vim.keymap.set("v", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("v", "k", "gk")
```

Going to the "start" or "end" of a line that spans multiple rows often misses the mark.

These mappings go to the shown break in the line:

```lua
vim.keymap.set("n", "$", "g$")
vim.keymap.set("v", "$", "g$")
vim.keymap.set("n", "0", "g0")
vim.keymap.set("v", "0", "g0")
vim.keymap.set("n", "g$", "$")
vim.keymap.set("v", "g$", "$")
vim.keymap.set("n", "g0", "0")
vim.keymap.set("v", "g0", "0")
```
