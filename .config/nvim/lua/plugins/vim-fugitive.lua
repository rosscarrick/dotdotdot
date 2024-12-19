return {
  "tpope/vim-fugitive",
  keys = {
    { "<Leader>gg", ":Ge :<CR>", mode = "n" }, -- Git explore
  },
  config = function()
    local hl = require("theme.groups")
    hl.primary(
      "fugitiveStagedHeading",
      "fugitiveStagedModifier",
      "diffAdded",
      "gitcommitFirstLine"
    )
    hl.secondary("fugitiveUnstagedHeading", "fugitiveUnstagedModifier")
    hl.subtler(
      "fugitiveUnstagedSection",
      "fugitiveCount",
      "fugitiveUntrackedSection"
    )
    hl.danger(
      "fugitiveUntrackedHeading",
      "fugitiveUntrackedModifier",
      "diffRemoved",
      "fugitiveHeading"
    )
  end,
}
