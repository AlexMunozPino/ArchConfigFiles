-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.termguicolors = true

require("lazy").setup({
  spec = {
	{ 
		"norcalli/nvim-colorizer.lua",
		config = function()
			require('plugins.nvim-colorizer')
		end, 
	},
	-- { 
	-- 	"stevearc/oil.nvim",
	-- 	config = function()
	-- 		require('plugins.oil')
	-- 	end,
	-- },
	{ 
		"nvim-tree/nvim-tree.lua",
		config = function()
			require('plugins.tree')
		end,
	},
	{ 
		"numToStr/Comment.nvim",
		config = function()
			require('plugins.comment')
		end,
	},
	-- { 
	-- 	"lambdalisue/vim-fern",
	-- 	config = function()
	-- 		require('plugins.vim-fern')
	-- 	end,
	-- },
  },

  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})
