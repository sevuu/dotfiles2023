require'nvim-treesitter.configs'.setup{
	ensure_installed = {"python","c","cpp","lua","vim"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	}
}
