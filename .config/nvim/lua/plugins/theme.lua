return {
  {
    "Mofiqul/vscode.nvim",
    opts = {},
    init = function()
      require("vscode").load("dark")
    end,
  },
}
