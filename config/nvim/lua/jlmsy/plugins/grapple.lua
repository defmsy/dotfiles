return {
    "cbochs/grapple.nvim",
    dependencies = {
        { "nvim-tree/nvim-web-devicons", lazy = true },
    },
    opts = {
        scope = "git",
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
        { "<leader>gt", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
        { "<leader>go", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
        { "<leader>gn", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
        { "<leader>gp", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
    },
}
