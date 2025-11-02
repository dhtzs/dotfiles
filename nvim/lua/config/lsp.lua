vim.lsp.enable({ "lua_ls" })

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        checkThirdParty = false,
        library = { vim.env.RUNTIME }
      },
    }
  }
})
