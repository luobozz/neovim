local status, transparent = pcall(require, "transparent")
if not status then
  vim.notify("没有找到 transparent")
  return
end

transparent.setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {"NvimTreeNormal","NormalFloat"},   -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})
