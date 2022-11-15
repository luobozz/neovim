---------------------------------------------------
--  ██╗     ██╗   ██╗ ██████╗ ██████╗  ██████╗   --
--  ██║     ██║   ██║██╔═══██╗██╔══██╗██╔═══██╗  --
--  ██║     ██║   ██║██║   ██║██████╔╝██║   ██║  --
--  ██║     ██║   ██║██║   ██║██╔══██╗██║   ██║  --
--  ███████╗╚██████╔╝╚██████╔╝██████╔╝╚██████╔╝  --
--  ╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝  ╚═════╝   --
---------------------------------------------------
-- local core_modules = {"basic", "keybinds", "plugins"}
-- for _, module in ipairs(core_modules) do
--     local ok, err = pcall(require, module)
--     if not ok then
--         error("Error loading " .. module .. "\n\n" .. err)
--     end
-- end
require("index")

vim.cmd[[colorscheme onenord]]