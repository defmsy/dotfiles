return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "bash",
                "css",
                "csv",
                "dockerfile",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "go",
                "helm",
                "html",
                "java",
                "javascript",
                "jq",
                "jsdoc",
                "json",
                "kotlin",
                "lua",
                "make",
                "markdown",
                "python",
                "regex",
                "rust",
                "scss",
                "sql",
                "ssh_config",
                "tcl",
                "terraform",
                "tmux",
                "toml",
                "typescript",
                "xml",
                "yaml",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-x>",
                    node_incremental = "<C-x>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end
}
