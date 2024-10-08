require("user.colorscheme")
require("user.keymaps")
require("user.options")
require("config.lazy")

vim.o.guicursor = table.concat({
	"n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
	"i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
	"r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100",
}, ",")

vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

-- vim.opt.guicursor = {
-- 	"n:blinkon0",
-- 	"i:block",
-- 	"v:blinkon0",
-- 	"c:block",
-- }

-- vim.cmd("TransparentToggle")
vim.cmd.colorscheme("bamboo")
