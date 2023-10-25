return {
  -- add gruvbox
  { "shawnonthenet/adventurous.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "adventurous",
    },
  },
  {
    "Wansmer/symbol-usage.nvim",
    event = "BufReadPre", -- need run before LspAttach if you use nvim 0.9. On 0.10 use 'LspAttach'
    config = function()
      require("symbol-usage").setup({
        filetypes = {
          elixir = {
            symbol_request_pos = "start",
          },
        },
      })
    end,
  },
}
