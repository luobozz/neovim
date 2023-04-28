local status, toggleterm = pcall(require, "toggleterm")
if not status then
  vim.notify("没有找到 toggleterm")
  return
end

local M = {}

function M.toggleFT(name, cmd)
  if G.fn['floaterm#terminal#get_bufnr'](name) ~= -1 then
    G.cmd(string.format('exec "FloatermToggle %s"', name))
  else
    G.cmd(string.format('FloatermNew --name=%s %s', name, cmd))
  end
end

function M.setFTToggleMap(key, name, cmd, map)
  map({
    { 'n', key, string.format(":lua require('pack/vim-floaterm').toggleFT('%s', '%s')<cr>", name, cmd),
      {
        silent = true,
        noremap = true
      } },
    { 't', key,
      "&ft == \"floaterm\" ? printf('<c-\\><c-n>:FloatermHide<cr>%s', floaterm#terminal#get_bufnr('" ..
      name .. "') == bufnr('%') ? '' : '" .. key .. "') : '" .. key .. "'", {
      silent = true,
      expr = true
    } },
  })
end

toggleterm.setup({})

return M
