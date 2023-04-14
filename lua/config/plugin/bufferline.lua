local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")  
   return
end

bufferline.setup({
    options = {
        -- 关闭Tab的命令
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
})
