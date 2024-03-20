return {
    { 
	-- Highly extendable fuzzy finder over lists plugin
	-- https://github.com/nvim-telescope/telescope.nvim
	"nvim-telescope/telescope.nvim",
	event = "VeryLazy",
      	dependencies = { 
	    -- All the lua functions I don"t want to write twice
	    -- This plugin is needed for this and other plugins
	    -- https://github.com/nvim-lua/plenary.nvim
	    "nvim-lua/plenary.nvim",

	    -- A file browser extension supporting synchronized creation, deletion, 
	    -- renaming, and moving of files and folders
	    -- https://github.com/nvim-telescope/telescope-file-browser.nvim
	    "nvim-telescope/telescope-file-browser.nvim",

	    -- Native FZF sorter extension that uses compiled C to do the matching, supports fzf syntax
	    -- https://github.com/nvim-telescope/telescope-fzf-native.nvim
	    {
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make" -- ensure exists in your system
	    },

	    -- Check more extensions here: https://github.com/nvim-telescope/telescope.nvim/wiki/Extensions 
	},
	opts = {
	   -- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes
	   defaults = {
	       -- Default telescope configuration
	   },
	   extensions = {
		-- Use default extension options (see extensions doc)
	   },
	   pickers = {
		-- Use defaul plugin options (see telescope doc)
	   },
	},
	config = function(opts) 
	    -- Setup telescope
	    require("telescope").setup(opts)

	    -- Enable extensions
	    require("telescope").load_extension "fzf"
	    require("telescope").load_extension "file_browser"
	end,
	keys = {
	    -- Define keymaps for telescope
	},
    }
}
