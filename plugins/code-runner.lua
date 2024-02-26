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
          "set -x &&",
          "cd $dir &&",
          "cargo run",
        },
        cpp = {
          "set -x &&",
          "bear -- g++ -g -std=c++11 -Wall -Werror -pedantic-errors -fsanitize=undefined -I. -I./include -o $fileNameWithoutExt $dir/$fileName &&",
          "./$fileNameWithoutExt",
        },
      },
    },

    keys = {
      { "<F4>", "<cmd>RunCode<CR>", mode = { "n", "v" }, desc = "RunCode" },
    },
  },
}
