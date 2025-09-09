-- lua/plugins/colorscheme.lua
return {
  -- make sure the theme plugin is installed and loaded early
  {
    "DonJulve/NeoCyberVim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      italics = {
        comments = true,
        keywords = true,
        functions = true,
        strings = true,
        variables = true,
      },
    },
    config = function(_, opts)
      require("NeoCyberVim").setup(opts)
      -- optional because the next block tells lazyvim to use it,
      -- but calling it here guarantees it’s applied early
      vim.cmd.colorscheme("NeoCyberVim")
    end,
  },

  -- tell lazyvim “this is my colorscheme”
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "NeoCyberVim",
    },
  },

  -- (optional) stop lazyvim from pulling in tokyonight at all
  { "folke/tokyonight.nvim", enabled = false },
}

