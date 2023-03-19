local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymaps = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'rust_analyzer',
	'jsonls',
	'terraformls',
	'clangd',
	'bashls',
	'dockerls',
	'gopls',
	'lua_ls',
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
