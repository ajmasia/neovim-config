-- TODO: add keys related to buffers, git, etc.
local keymaps = {
	{
		"<leader>fF",
		"<cmd>Telescope find_files previewer=true<cr>",
		desc = "Find files (preview)",
	},
	{
		"<leader>ff",
		"<cmd>Telescope find_files previewer=false theme=ivy<cr>",
		desc = "Find files",
	},
	{
		"<leader><space>",
		"<cmd>Telescope find_files previewer=false theme=ivy<cr>",
		desc = "Find files",
	},
	{
		"<leader>fk",
		"<cmd>Telescope keymaps theme=ivy<cr>",
		desc = "Find keymaps",
	},
	{
		"<leader>fb",
		"<cmd>Telescope buffers previewer=false theme=ivy<cr>",
		desc = "Find buffers",
	},
	{
		"<leader>fB",
		"<cmd>Telescope buffers previewee=true<cr>",
		desc = "Find buffers (preview)",
	},
	{
		"<leader>fr",
		"<cmd>Telescope oldfiles previewer=false theme=ivy<cr>",
		desc = "Find recent files",
	},
	{
		"<leader>fR",
		"<cmd>Telescope oldfiles previewer=true<cr>",
		desc = "Find recent files",
	},
	{
		"<leader>st",
		"<cmd>Telescope live_grep previewer=false theme=ivy<cr>",
		desc = "Search text in (cwd)",
	},
	{
		"<leader>sT",
		"<cmd>Telescope live_grep previewer=true<cr>",
		desc = "Search text (cwd) (preview)",
	},
	{
		"<leader>ss",
		"<cmd>Telescope grep_string previewer=false theme=ivy<cr>",
		desc = "Search text (cwd) under cursor",
	},
	{
		"<leader>sS",
		"<cmd>Telescope grep_string previewer=true<cr>",
		desc = "Search text (cwd) under cursor (preview)",
	},
}

return keymaps
