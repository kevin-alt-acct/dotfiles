return {
  {
    "nvim-pack/nvim-spectre",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("spectre").setup()
      vim.keymap.set("n", "<leader>fr", '<cmd>lua require("spectre").toggle()<CR>', { desc = "[F]ind and [R]eplace" })
      vim.keymap.set("n", "<leader>fw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "[F]ind current [W]ord" })
      vim.keymap.set("v", "<leader>fw", '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "[F]ind selection" })
      vim.keymap.set("n", "<leader>fp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', { desc = "[F]ind in current [P]ath" })
    end,
  },
}
