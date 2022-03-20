" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
noremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
"nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.vim lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

lua << EOF
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'    
lspconfig.pyright.setup{}
--clangd ================================
lspconfig.clangd.setup{
   cmd = { "clangd-12", };
--"--background-index" 
   filetypes = { "c", "cpp", "objc", "objcpp", };
   capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities());
}
--tsserver ================================
lspconfig.tsserver.setup{
   cmd = {"typescript-language-server","--stdio"},
   filetypes = {"typescript", "typescriptreact", "typescript.tsx", "javascript"};
   root_dir = function() return vim.loop.cwd() end
}
lspconfig.html.setup{
   cmd = {"html-languageserver", "--stdio"};
   on_attach = on_attach;
   filetypes = {"html", "css"};
   root_dir = function() return vim.loop.cwd() end
}

--snippet =================================
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.emmet_ls.setup{
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css'};
      root_dir = function(fname)    
        return vim.loop.cwd()
      end;    
      capabilities = capabilities
}
EOF
