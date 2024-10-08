return {
        -- theme = "lushwal",
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "python",
        go = "go run",
      },
    })

    vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
    vim.keymap.set("n", "<leader>rg", ":RunClose<CR>", { noremap = true, silent = false })
  end,
}
