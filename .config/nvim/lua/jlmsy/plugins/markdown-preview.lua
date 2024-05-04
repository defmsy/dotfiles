return {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function()
        vim.fn["mkdp#util#install"]()

        local keymap = vim.keymap

        keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "Start MarkdownPreview" })
        keymap.set("n", "<leader>mx", "<cmd>MarkdownPreviewStop<CR>", { desc = "Stop MarkdownPreview" })
        keymap.set("n", "<leader>mt", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Toggle MarkdownPreview" })
    end
}
