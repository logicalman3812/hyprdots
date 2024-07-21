local function set_colorscheme(colorscheme)
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found!", vim.log.levels.ERROR)
end
end

set_colorscheme("pywal16")
