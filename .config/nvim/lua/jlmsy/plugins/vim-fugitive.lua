-- plugins/git.lua
return {
  "tpope/vim-fugitive",
  cmd = {
    "Git",
  },
  keys = {
      { "<leader>xl", "<cmd>Git log<cr>", desc = "Git log" },
      { "<leader>xs", "<cmd>Git status<cr>", desc = "Git status" },
      { "<leader>xp", "<cmd>Git push<cr>", desc = "Git push" },
      { "<leader>xpsup", "<cmd>Git push --set-upstream origin $(git_current_branch)<cr>", desc = "Git push & create remote branch" },
      { "<leader>xca", "<cmd>Git commit --verbose --all<cr>", desc = "Git commit all" },
      { "<leader>xc!", "<cmd>Git commit --verbose --amend<cr>", desc = "Git commit ammend" },
      { "<leader>xrbi", "<cmd>Git rebase --interactive<cr>", desc = "Git rebase interactive" },
      { "<leader>xaa", "<cmd>Git add --all<cr>", desc = "Git add all" },
      { "<leader>xaa!", "<cmd>Git add --all --amend<cr>", desc = "Git add all ammend" },
      { "<leader>xw", "<cmd>Git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message \"--wip-- [skip ci]\"<cr>", desc = "Git wip" },
      { "<leader>xuw", "<cmd>Git rev-list --max-count=1 --format=\"%s\" HEAD | grep -q \"--wip--\" && git reset HEAD~1<cr>", desc = "Git unwip" },
  },
}

