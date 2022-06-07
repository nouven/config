lua << EOF
require "lsp-format".setup {
    typescript = { tab_width = 7 },
    yaml = { tab_width = 2 },
    cpp = { tab_width = 5 },
}
local prettier = {
    formatCommand = [[prettier --stdin-filepath ${INPUT} ${--tab-width:tab_width}]],
    formatStdin = true,
}
--require "lspconfig".efm.setup {
--    on_attach = require "lsp-format".on_attach,
--    init_options = { documentFormatting = true },
--    settings = {
--        languages = {
--            typescript = { prettier },
--            yaml = { prettier },
--            cpp = {prettier}
--        },
--    },
--}
EOF
