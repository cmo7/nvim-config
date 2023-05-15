local plugins = {
  {
    -- TreeSitter
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "html",
        "css",
        "bash",
        "java",
        "xml",
        "yaml"
      },
    },
    -- Mason
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "lua-language-server",
          "html-lsp",
          "prettier",
          "stylua",
          "typescript-language-server",
          "eslint-lsp",
          "eslint_d",
          "jdtls",
          "gopls",
          "lemminx",
          "yaml-language-server",
          "emmet-ls"
        },
        automatic_installation = true,
      },
    },
    {
      -- LSP
      "neovim/nvim-lspconfig",
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
  },
}

return plugins
