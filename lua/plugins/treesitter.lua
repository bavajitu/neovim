return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- core
        "c",
        "cmake",
        "cpp",
        "svelte",
        "rust",
        "go",
        "latex",
        "lua",
        "vim",
        "vimdoc",
        "query",

        -- scripting / general
        "bash",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "yaml",
        "toml",

        -- web
        "html",
        "css",

        -- systems / JVM
        "java",
        "kotlin",

        -- misc common
        "markdown",
        "markdown_inline",
        "regex",
        "dockerfile",
        "gitignore",
      },
      highlight = {
        additional_vim_regex_highlighting = false,
        enable = true,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader>si",
          node_incremental = "<leader>sn",
          scope_incremental = "<leader>ss",
          node_decremental = "<leader>sd",
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["ap"] = "@parameter.outer",
            ["ip"] = "@parameter.inner",
          },
        },

        swap = {
          enable = true,
          swap_next = {
            ["<leader>sw"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>sW"] = "@parameter.inner",
          },
        },
      },
    },
  },
}
