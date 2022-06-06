lua <<EOF
require'nvim-treesitter.configs'.setup {
ensure_installed = {"javascript", "cpp", "css", "html"},
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
}
EOF

