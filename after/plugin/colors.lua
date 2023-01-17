function theme(color)
	color = color or "tulip"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal",  {  bg =  "none" })
	--vim.api.nvim_set_hl(0, "FloatNormal", {  bg =  "none" })
end


theme()
