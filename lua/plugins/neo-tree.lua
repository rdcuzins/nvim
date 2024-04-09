return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    },
    config = function()
      vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})
      vim.keymap.set("n", "<C-n>", ":Neotree action=show toggle<CR>", {})
      vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    end
}
