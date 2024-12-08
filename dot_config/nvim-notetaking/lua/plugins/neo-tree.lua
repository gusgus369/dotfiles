return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "MunifTanjim/nui.nvim"
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left <CR>", {})
		require('neo-tree').setup {
  filesystem = {
    filtered_items = {
      visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
      hide_dotfiles = false,
      hide_gitignored = true,
				}
			}
		}
	end
}