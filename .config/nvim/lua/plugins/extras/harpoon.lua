return {
  "ThePrimeagen/harpoon",
  keys = {
    { "<leader>a", ":lua require('harpoon.mark').add_file()<CR>" },
    { "<leader>h", ":lua require('harpoon.ui').toggle_quick_menu()<CR>" },
    { "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>" },
    { "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>" },
    { "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>" },
    { "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>" },
  },
}
