-- Prevent loading twice
if vim.g.loaded_claude_fu == 1 then
  return
end
vim.g.loaded_claude_fu = 1
