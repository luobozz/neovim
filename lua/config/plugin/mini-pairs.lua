local status, minipairs= pcall(require, "mini.pairs")
if not status then
  vim.notify("没有找到 mini.pairs")
  return
end

minipairs.setup()
