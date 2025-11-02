return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    local telescope = require("telescope")
    telescope.load_extension("fzf")
    telescope.load_extension("noice")
    telescope.load_extension("media_files")
  end,
}
