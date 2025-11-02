return {
    "saghen/blink.cmp",
    dependencies = {
      "L3MON4D3/LuaSnip", version = "v2.*",
    },
    version = "1.*",
    opts = {
        keymap = { preset = "default" },
        appearance = { nerd_font_variant = "mono" },
        completion = { documentation = { auto_show = true } },
        snippets = { preset = "luasnip" },
        sources = {
          default = { "lsp", "path", "snippets", "buffer" },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = { enabled = true },
    },
    opts_extend = { "sources.default" },
}
