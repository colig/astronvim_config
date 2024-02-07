return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          -- when true, they will just be displayed differently than normal items
          visible = true,
          -- remains hidden even if visible is toggled to true, this overrides always_show
          never_show = {
            ".git",
            ".github"
          },
        },
      },
    },
  },
}
