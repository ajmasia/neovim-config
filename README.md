# neovim-config

A collaborative learning journey building the best editor ever config

## Version 0.1

- [x] add support for plugins management using [folke/lazy.nvim: 💤 A modern plugin manager for Neovim](https://github.com/folke/lazy.nvim)
- [ ] add support for code highlighting using [nvim-treesitter/nvim-treesitter: Nvim Treesitter configurations and abstraction layer](https://github.com/nvim-treesitter/nvim-treesitter)
- [ ] add support for files and buffers management using [nvim-telescope/telescope.nvim: Find, Filter, Preview, Pick. All lua, all the time.](https://github.com/nvim-telescope/telescope.nvim)
- [ ] add basic lsp support for lua and typescript using [neovim/nvim-lspconfig: Quickstart configs for Nvim LSP](https://github.com/neovim/nvim-lspconfig), [nvim-telescope/telescope.nvim: Find, Filter, Preview, Pick. All lua, all the time.](https://github.com/nvim-telescope/telescope.nvim), [williamboman/mason-lspconfig.nvim: Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.](https://github.com/williamboman/mason-lspconfig.nvim)
- [ ] add initial keymaps for basic use
- [x] add initial options

> [Brainstorming](https://coggle.it/diagram/ZfMSVag04DCRThjz/t/neovim-config)

# Config folder

| File/Folder | Description |
| --- | --- |
| `config/lazy.lua` | Plugin manager config |
| `config/options.lua` | Define global and editor options |
| `config/keymaps` | Define global keymaps |
| `config/autocmds` | Define global auto-commands |
| `plugins/` | Contains all plugins configs by file |
 
## Adding new plugins example

1. Create a new plugin file under `user.plugins` folder: `surround.lua`
2. Define the plugin config in this file

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

## Commands

| Command | Description         |
| ------- | ------------------- |
| `:Lazy` | Open plugin manager |

