---The current page
---@class Newsflash
---@field win_id? integer
---@field toggle fun()

---Subscriptions of the current viewer
---@type Newsflash
---@diagnostic disable-next-line: missing-fields
local M = {
	win_id = nil,
}

---Read the paper
function M.toggle()
	if M.win_id and vim.api.nvim_win_is_valid(M.win_id) then
		vim.api.nvim_win_close(M.win_id, true)
		M.win_id = nil
		return
	end
	local buf = vim.api.nvim_get_current_buf()
	local window = {
		relative = "editor",
		width = 80,
		height = vim.o.lines - 4,
		row = 1,
		col = math.floor((vim.o.columns - 80) / 2),
		style = "minimal",
		border = "rounded",
	}
	M.win_id = vim.api.nvim_open_win(buf, true, window)
	vim.wo.breakindent = true
	vim.wo.linebreak = true
	vim.wo.number = false
	vim.wo.relativenumber = false
	vim.wo.wrap = true
end

return M
