require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- -- buffers

map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- copilot

local openCopilot = function()
  local input = vim.fn.input "Quick Chat: "
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end

map({ "n", "v" }, "<leader>cq", openCopilot, { desc = "CopilotChat - Quick chat", remap = true })
map({ "n", "v" }, "<leader>cQ", ":CopilotChat", { desc = "CopilotChat - Open chat", remap = true })

-- tmux navigator

map({ "n" }, "<c-h>", ":TmuxNavigateLeft<cr>", { remap = true })
map({ "n" }, "<c-j>", ":TmuxNavigateDown<cr>", { remap = true })
map({ "n" }, "<c-k>", ":TmuxNavigateUp<cr>", { remap = true })
map({ "n" }, "<c-l>", ":TmuxNavigateRight<cr>", { remap = true })
