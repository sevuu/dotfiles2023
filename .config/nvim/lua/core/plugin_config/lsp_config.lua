require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls"}
})

local on_attach = function(_, _)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


require("lspconfig").lua_ls.setup {
	on_attach = on_attach
}
