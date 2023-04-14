local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end
nvim_tree.setup({
  actions={
    open_file={
      -- 打开文件时关闭
      quit_on_open=true,
    }
  },
  update_cwd=true,

  update_focused_file = {
    enable = true,
    update_cwd = true,
  },

})
