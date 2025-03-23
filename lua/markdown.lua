local L = {}

L.conceals = require("conceals")

L.__index = L

L._defaults = {
	conceals = {
		enabled = {
			"amssymb",
			"core",
			"delim",
			"font",
			"greek",
			"math",
			-- "mleftright",
			"script",
		},
		add = {},
	},
}

function L.setup(args)
	args = vim.tbl_deep_extend("force", L._defaults, args == nil and {} or args)
	vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
		pattern = { "*.tex", "*.md", "*.py" },
		callback = function()
			L.conceals.init(args.conceals)
		end,
	})
end

return L
