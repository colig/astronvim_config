return {
  {
    "CRAG666/code_runner.nvim",
    config = true,
    event = "User AstroFile",
    opts = {
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "deno run",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        cpp = {
          "g++ -g -I. -I./include -o $fileNameWithoutExt $dir/$fileName &&",
          "./$fileNameWithoutExt",
        },
      },
    },

    keys = {
      { "<F4>", "<cmd>RunCode<CR>", mode = { "n", "v" }, desc = "RunCode" },
    },
  },
}