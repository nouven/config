set completeopt=menu,menuone,noselect

lua <<EOF

local cmp = require'cmp'
local lspkind = require'lspkind'
local lspsaga = require'lspsaga'



cmp.setup({

snippet = {
   expand = function(args)
    vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
   --require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
   --require('snippy').expand_snippet(args.body) -- For `snippy` users.
   --vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
   end
},
mapping = {
   ["<C-p>"] = cmp.mapping.select_prev_item(),
   ["<C-n>"] = cmp.mapping.select_next_item(),
   ["<tab>"] = cmp.mapping.select_next_item(),

   ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
   ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
   ["<C-space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
   ["<C-y>"] = cmp.config.disable, 
   ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
      },
   ["<CR>"] = cmp.mapping.confirm { select = true},
   },
  sources = {
     { name = "nvim_lsp" },
     { name = "vsnip" },
     { name = "buffer" },
     { name = "path" },
  },
  confirm_opts = {
     behavior = cmp.ConfirmBehavior.Replace,
     select = true,
  },
  window ={
    documentation = {
       border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    completion = cmp.config.window.bordered(),
  },
  experimental = {
     ghost_text = false,
     native_menu = false,
  },

  formatting = {
    format = lspkind.cmp_format({
      with_text = true,
      maxwidth = 50,
      transparent = true,
      mode = 'symbol',
      fields = { "kind", "abbr", "menu" },
      before = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          vsnip = "[Snip]",
          buffer = "[Buff]",
          path = "[Path]",
        })[entry.source.name]
        return vim_item
        end,
      }),
   },

})

EOF


