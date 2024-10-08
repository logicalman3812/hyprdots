local status_ok, lushwal = pcall(require, "lushwal")
if not status_ok then
  return
end

-- lushwal.add_reload_hook({
--   vim.cmd("LushwalCompile"),
--   vim.cmd("highlight TSBracket guifg=#ff0000")
-- })

local status_ok, _ = pcall(require, "transparent")
if not status_ok then
  return
end
