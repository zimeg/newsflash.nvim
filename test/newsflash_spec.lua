local busted = require("busted.runner")

busted()

describe("newsflash", function()
	it("opens a paper", function()
		local plugin = require("./lua/newsflash")
		assert.is_nil(plugin.win_id)
		plugin.toggle()
		assert.equal(true, vim.wo.breakindent)
		assert.equal(true, vim.wo.linebreak)
		assert.equal(false, vim.wo.number)
		assert.equal(false, vim.wo.relativenumber)
		assert.equal(true, vim.wo.wrap)
		assert.equal(78, vim.api.nvim_win_get_width(plugin.win_id)) -- 80
		assert.equal(20, vim.api.nvim_win_get_height(plugin.win_id)) -- 24
		plugin.toggle()
		assert.is_nil(plugin.win_id)
	end)
end)
