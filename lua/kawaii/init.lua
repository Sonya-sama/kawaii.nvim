local kawaii = {}

local config = require("kawaii.config")
local theme = require("kawaii.theme")

kawaii.setup = config.setup

kawaii.load = function ()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax on") then
        vim.cmd("syntax reset")
    end
    
    vim.o.termguicolors = true
    vim.g.colors_name = "kawaii"
    
    theme.set_highlights(config.opts)
end

return kawaii
