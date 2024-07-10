
function ColorMyPencils(color)
    color = color or "cyberdream"
    --color = color or "tokyonight-storm" 
    --color = color or "nightfox"
    --color = color or "catppuccin-mocha"
    --color = color or "gruvbox-baby"
    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
end

ColorMyPencils()

