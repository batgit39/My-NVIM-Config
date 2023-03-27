
function ColorMyPencils(color)
--	color = color or "rose-pine" 
--	color = color or "tokyonight-moon" 
	color = color or "onedark"
--	color = color or "doom-one"
    vim.cmd.colorscheme(color)
--    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(1, "Normal", { bg = "none" } )
	vim.api.nvim_set_hl(1, "NormalFloat", { bg = "none" } )
end

ColorMyPencils()

