# neovim-config

A collaborative learning journey building the best editor ever config

## Version 0.1

- [x] add support for plugins management using [folke/lazy.nvim: 💤 A modern plugin manager for Neovim](https://github.com/folke/lazy.nvim)
- [ ] add support for code highlighting using [nvim-treesitter/nvim-treesitter: Nvim Treesitter configurations and abstraction layer](https://github.com/nvim-treesitter/nvim-treesitter)
- [x] add support for files and buffers management using [nvim-telescope/telescope.nvim: Find, Filter, Preview, Pick. All lua, all the time.](https://github.com/nvim-telescope/telescope.nvim)
- [ ] add basic lsp support for lua and typescript using [neovim/nvim-lspconfig: Quickstart configs for Nvim LSP](https://github.com/neovim/nvim-lspconfig), [nvim-telescope/telescope.nvim: Find, Filter, Preview, Pick. All lua, all the time.](https://github.com/nvim-telescope/telescope.nvim), [williamboman/mason-lspconfig.nvim: Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.](https://github.com/williamboman/mason-lspconfig.nvim)
- [ ] add initial keymaps for basic use
- [x] add initial options

> [Brainstorming](https://coggle.it/diagram/ZfMSVag04DCRThjz/t/neovim-config)

## Initial config folder

| File/Folder | Description |
| --- | --- |
| `config/lazy.lua` | Plugin manager config |
| `config/options.lua` | Define global and editor options |
| `config/keymaps` | Define global keymaps |
| `config/autocmds` | Define global auto-commands |
| `plugins/` | Contains all plugins configs by file |
 

## Main commands

| Command | Description         |
| ------- | ------------------- |
| `:Lazy` | Open plugin manager |
| `:Telescope <picker>` | Open Telescope picker |

## Plugins

### Adding new plugins example

1. Create a new plugin file under `user.plugins` folder
2. Define the plugin config in this file

#### Example `lua/user/plugins/surround.lua`

```lua
return {
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }
}
```

### Telescope
[nvim-telescope/telescope.nvim: Find, Filter, Preview, Pick. All lua, all the time.](https://github.com/nvim-telescope/telescope.nvim)

#### Config

[lua/user/plugins/telescope.lua](./lua/user/plugins/telescope.lua)

Check [nvim-telescope/telescope.nvim Wiki](https://github.com/nvim-telescope/telescope.nvim/wiki) for more config options

#### Working with telescope

You can use *Telescope* directally using this command `:Telescope <picker>`.

The default mode within telescope is the insert mode. If you switch to normal mode you can access the help inside the current picare by typing `?`.

Some useful commands within the picker

| Command | Description |
| --- | --- |
| `Ctrl + V` | Open file in a vertical split |
| `Ctrl + H` | Open file in a horizontal split |
| `Ctrl + T` | Open file in a new tab|
| `Ctrl + U` | Scroll up in the preview mode |
| `Ctrl + D` | Scroll down in the preview mode |
| `Tab` | Toggle selection (multiselection) |

#### Keymaps

| Keymap | Description |
| --- | --- |
| `<leade>fk` | Find keymaps |
| `<leade>ff`, `<leader><space>` | Find files (cwd) |
| `<leade>fF` | Find files (cwd) (preview) |
| `<leade>fb` | Find buffers |
| `<leade>fB` | Find buffers (preview) |
| `<leade>fr` | Find recents files |
| `<leade>fR` | Find recents files (preview) |
| `<leade>st` | Search text in (cwd) |
| `<leade>sT` | Search text in (cwd) (preview) |
| `<leade>ss` | Search text in (cwd) under cursor |
| `<leade>sS` | Search text in (cwd) under cursor (preview) |

