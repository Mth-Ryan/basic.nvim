--[[

__   __    _
\ \ / /_ _| |_
 \ V / _` | __|
  | | (_| | |_
  |_|\__,_|\__|


File:        init.lua
Author:      Mateus Ryan <mthryan@protonmail.com>
Description: Yes, another theme
Licence:     MIT

--]]

local theme = require("yat.theme")

function highlight(group, color)
  local style = color.st and "gui="   .. color.st or "gui=NONE"
  local fg    = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg    = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp    = color.sp and "guisp=" .. color.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

function tableHighlight(table)
    for group, color in pairs(table) do
        highlight(group, color)
    end
end

function setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background    = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name   = "yat"

    local editor   = theme.loadEditor()
    local syntax   = theme.loadSyntax()
    local specific = theme.loadSpecific()
    local lsp      = theme.loadLsp()

    tableHighlight(editor)
    tableHighlight(syntax)
    tableHighlight(specific)
    tableHighlight(lsp)

    theme.loadTerminal()

    local lspIcons = theme.loadLspIcons()
    for group, options in pairs(lspIcons) do
        local icon = options.text
        local hl   = options.texthl
        local sg = "sign define " .. group .. " text=" .. icon .. " " .. " texthl=" .. hl

        vim.cmd(sg)
    end
end

return { setup = setup }
