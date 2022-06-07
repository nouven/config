lua << EOF
local lsp_installer = require("nvim-lsp-installer")
local servers = {
	"pyright",
	"tsserver",
	"emmet_ls",
	"clangd",
        "html5",
        "jdtls",
}
---@diagnostic disable-next-line: undefined-global
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

for _, name in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found then
		if not server:is_installed() then
			print("Installing " .. name)
			server:install()
		end
	end
end

lsp_installer.on_server_ready(function(server)
	-- Specify the default options which we'll use to setup all servers
	local default_opts = {
		on_attach = on_attach,
		capabilities = capabilities,
	}
        --local emmet_ls_opt = {
	--	on_attach = on_attach,
	--	capabilities = capabilities,
        --        filetypes = {"html", "javascript"},
        --}
        --if server == "emmet_ls" then
	--        server:setup(emmet_ls_opt)
        --else
	--        server:setup(default_opts)
        --end
        server:setup(default_opts)
end)
EOF
