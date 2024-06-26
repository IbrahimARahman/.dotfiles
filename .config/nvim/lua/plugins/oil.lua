return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local oil = require("oil")
		function _G.set_oil_directory_as_working_directory()
			local current_dir = oil.get_current_dir()
			vim.cmd("cd " .. current_dir)
			print("Working directory set to:" .. current_dir)
		end
		oil.setup({
      delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
		})
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    vim.api.nvim_set_keymap('n', '<leader>od', '<cmd>lua set_oil_directory_as_working_directory()<CR>', { noremap = true, silent = true })
	end,
}
