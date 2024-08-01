return {
	{
		"williamboman/mason.nvim",
    lazy=false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    lazy=false,
		opts = {
			auto_install = true,
		},
		-- config = function()
		--   require("mason-lspconfig").setup({
		--     ensure_installed = {
		--       "lua_ls"
		--     }
		--   })
		-- end
	},
	{
		"neovim/nvim-lspconfig",
    lazy=false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
