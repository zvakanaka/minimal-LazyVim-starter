-- comment this out to enable this plugin
if true then return {} end
return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      -- transparent_mode = true, -- causes problems with bufferline.nvim (this is fixable, so maybe later)
    })
    vim.o.background = "dark" -- or "light" for light mode
    vim.cmd("colorscheme gruvbox")
  end,
}
