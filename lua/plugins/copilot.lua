return { 
  "zbirenbaum/copilot.lua",
  init = function()
    require("copilot").setup({
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<M-j>",
          accept_word = "<M-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        }
      }
    })
  end
}
