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
			-- INFO fold commands usually change the foldlevel, which fixes folds, e.g.
			-- auto-closing them after leaving insert mode, however ufo does not seem to
			-- have equivalents for zr and zm because there is no saved fold level.
			-- Consequently, the vim-internal fold levels need to be disabled by setting
			-- them to 99.
			vim.opt.foldlevel = 99
			vim.opt.foldlevelstart = 99

      require('ufo').setup()
		end,
  }
}
