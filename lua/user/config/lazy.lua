---@diagnostic disable: undefined-global
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- https://github.com/folke/lazy.nvim?tab=readme-ov-file#%EF%B8%8F-configuration
require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{ "LazyVim/LazyVim", import = "user.plugins" },
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit, version = "*", -- try installing the latest stable version for plugins that support semver
	},
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		-- runtime path options
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip", -- (transparently edit .gz compressed files),
				-- "matchit" -- (enhanced matching for block keywords '%'),
				-- "matchparen" -- (highlights matching parentheses, braces, brackets),
				-- "netrwPlugin" -- (rile and remote directory explorer),
				"tarPlugin", -- (navigate and edit .tar archives),
				"tohtml", -- (converts buffer content to HTML),
				-- "tutor", -- (interactive tutorials for learning Neovim/Vim.),
				"zipPlugin", -- (edit and browse .zip files.),
			},
		},
	},
})
