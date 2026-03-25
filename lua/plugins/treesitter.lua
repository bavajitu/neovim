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
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },
}
