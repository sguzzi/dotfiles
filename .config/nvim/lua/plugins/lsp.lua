return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.diagnostics.ruff,
          nls.builtins.diagnostics.shellcheck,
          nls.builtins.formatting.black,
          nls.builtins.formatting.markdownlint,
          nls.builtins.formatting.prettierd,
          nls.builtins.formatting.ruff,
          nls.builtins.formatting.rustfmt,
          nls.builtins.formatting.shfmt.with({
            extra_args = { "--indent", "2", "--case-indent" },
          }),
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.taplo,
        },
      }
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "markdownlint",
        "prettierd",
        "ruff",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "stylua",
        "taplo",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
      },
    },
  },
}
