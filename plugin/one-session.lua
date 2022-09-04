local group = vim.api.nvim_create_augroup("OneSession", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = require("one-session").load,
	group = group,
})

vim.api.nvim_create_autocmd("VimLeave", {
	pattern = "*",
	callback = require("one-session").save,
	group = group,
})
