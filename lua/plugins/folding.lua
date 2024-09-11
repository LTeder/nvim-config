return {
  {
		"kevinhwang91/nvim-ufo",
		dependencies = "kevinhwang91/promise-async",
		-- event = "UIEnter", -- needed for folds to load in time and comments being closed
		  keys = {
			{ "zm", function() require("ufo").closeAllFolds() end, desc = "󱃄 Close All Folds" },
			{ "zr", function()
				require("ufo").openFoldsExceptKinds { "comment", "imports" }
				vim.opt.scrolloff = vim.g.baseScrolloff -- fix scrolloff setting sometimes being off
			end, desc = "󱃄 Open All Regular Folds" },
			{ "zR", function() require("ufo").openFoldsExceptKinds {} end, desc = "󱃄 Open All Folds" },
			{ "z1", function() require("ufo").closeFoldsWith(1) end, desc = "󱃄 Close L1 Folds" },
			{ "z2", function() require("ufo").closeFoldsWith(2) end, desc = "󱃄 Close L2 Folds" },
			{ "z3", function() require("ufo").closeFoldsWith(3) end, desc = "󱃄 Close L3 Folds" },
			{ "z4", function() require("ufo").closeFoldsWith(4) end, desc = "󱃄 Close L4 Folds" },
		},
		init = function()
      vim.opt.foldcolumn = '0'
      vim.opt.foldlevel = 99
			vim.opt.foldlevelstart = 99
      vim.opt.foldenable = true
      require('ufo').setup()
		end,
  }
}
