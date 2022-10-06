--[[

______         _  ___  ___          _                 
| ___ \       | | |  \/  |         | |                
| |_/ /__  ___| |_| .  . | ___   __| | ___ _ __ _ __  
|  __/ _ \/ __| __| |\/| |/ _ \ / _` |/ _ \ '__| '_ \ 
| | | (_) \__ \ |_| |  | | (_) | (_| |  __/ |  | | | |
\_|  \___/|___/\__\_|  |_/\___/ \__,_|\___|_|  |_| |_|
                                                        
 File:        lua/postmodern/theme.lua
 Author:      Mateus Ryan <mthryan@protonmail.com>
 Description: Real post modern? maybe, maybe not. Just enjoy the theme.
 Licence:     MIT

--]]

local colors = require("postmodern.colors")
local theme  = {}

theme.loadEditor = function()
    local ui = {
        Normal       = { fg = colors.fg1, bg = colors.bg1, },
        NonText      = { fg = colors.bg3, bg = colors.bg1, },
        EndOfBuffer  = { fg = colors.bg3, bg = colors.bg1, },
        Cursor       = { fg = colors.bg1, bg = colors.fg1, },
        CursorLineNr = { fg = colors.fg1,                  },
        CursorLine   = {                  bg = colors.bg2, },
        CursorColumn = {                  bg = colors.bg3, },
        ColorColumn  = {                  bg = colors.bg3, },
        SignColumn   = {                                   },
        LineNr       = { fg = colors.fg1,                  },
        VertSplit    = { fg = colors.fg1, bg = colors.bg1, },
        Visual       = { fg = colors.fg1, bg = colors.bg3, },
        MatchParen   = { fg = colors.err, st = "underline" },
        StatusLine   = { fg = colors.fg2, bg = colors.bg3, },
        Pmenu        = { fg = colors.fg2, bg = colors.bg2, },
        PmenuSel     = { fg = colors.bg1, bg = colors.fg1, },
        PmenuSbar    = {                  bg = colors.bg3, },
        PmenuThumb   = {                  bg = colors.bg3, },
        IncSearch    = { fg = colors.bg2, bg = colors.fg1, },
        Search       = { fg = colors.err, st = "underline" },
        Directory    = { fg = colors.fg1,                  },
        Folded       = { fg = colors.fg3,                  },
        WildMenu     = { fg = colors.fg1,                  },
        DiffAdd      = { fg = colors.fg1, st = "underline" },
        DiffDelete   = { fg = colors.err,                  },
        DiffChange   = { fg = colors.war, st = "bold"      },
        DiffText     = { fg = colors.fg1, st = "bold"      },
        ErrorMsg     = { fg = colors.err, st = "bold"      },
        WarningMsg   = { fg = colors.war,                  },
    }
    return ui
end

theme.loadSyntax = function()
    local syntax = {
        Label        = { fg = colors.fg1,                  },
        Title        = { fg = colors.fg1,                  },
        SpecialKey   = { fg = colors.fg1,                  },
        Todo         = { fg = colors.fg1, st = "bold"      },
        Underlined   = {                  st = "underline" },
        Comment      = { fg = colors.fg1,                  },
        Type         = { fg = colors.fg1,                  },
        Character    = { fg = colors.fg1,                  },
        String       = { fg = colors.fg1,                  },
        Conditional  = { fg = colors.fg1,                  },
        Repeat       = { fg = colors.fg1,                  },
        Constant     = { fg = colors.fg1,                  },
        Float        = { fg = colors.fg1,                  },
        Number       = { fg = colors.fg1,                  },
        Function     = { fg = colors.fg1, st = "italic"    },
        Special      = { fg = colors.fg1,                  },
        Identifier   = { fg = colors.fg1,                  },
        Keyword      = { fg = colors.fg1,                  },
        Statement    = { fg = colors.fg1,                  },
        Tag          = { fg = colors.fg1,                  },
        PreProc      = { fg = colors.fg1,                  },
        Define       = { fg = colors.fg1,                  },
        Operator     = { fg = colors.fg1,                  },
        StorageClass = { fg = colors.fg1,                  },
    }
    return syntax
end

theme.loadLsp = function()
    local lsp = {
        LspDiagnosticsDefaultError           = { fg = colors.err, },
        LspDiagnosticsVirtualTextError       = { fg = colors.err, },
        LspDiagnosticsUnderlineError         = { fg = colors.err, },
        LspDiagnosticsFloatingError          = { fg = colors.err, },
        LspDiagnosticsSignError              = { fg = colors.err, },
        LspDiagnosticsDefaultWarning         = { fg = colors.war, },
        LspDiagnosticsVirtualTextWarning     = { fg = colors.war, },
        LspDiagnosticsUnderlineWarning       = { fg = colors.war, },
        LspDiagnosticsFloatingWarning        = { fg = colors.war, },
        LspDiagnosticsSignWarning            = { fg = colors.war, },
        LspDiagnosticsDefaultInformation     = { fg = colors.inf, },
        LspDiagnosticsVirtualTextInformation = { fg = colors.inf, },
        LspDiagnosticsUnderlineInformation   = { fg = colors.inf, },
        LspDiagnosticsFloatingInformation    = { fg = colors.inf, },
        LspDiagnosticsSignInformation        = { fg = colors.inf, },
        LspDiagnosticsDefaultHint            = { fg = colors.hin, },
        LspDiagnosticsVirtualTextHint        = { fg = colors.hin, },
        LspDiagnosticsUnderlineHint          = { fg = colors.hin, },
        LspDiagnosticsFloatingHint           = { fg = colors.hin, },
        LspDiagnosticsSignHint               = { fg = colors.hin, },
        DiagnosticVirtualTextError           = { fg = colors.err, },
        DiagnosticUnderlineError             = { fg = colors.err, },
        DiagnosticFloatingError              = { fg = colors.err, },
        DiagnosticSignError                  = { fg = colors.err, },
        DiagnosticVirtualTextWarn            = { fg = colors.war, },
        DiagnosticUnderlineWarn              = { fg = colors.war, },
        DiagnosticFloatingWarn               = { fg = colors.war, },
        DiagnosticSignWarn                   = { fg = colors.war, },
        DiagnosticVirtualTextInfo            = { fg = colors.inf, },
        DiagnosticUnderlineInfo              = { fg = colors.inf, },
        DiagnosticFloatingInfo               = { fg = colors.inf, },
        DiagnosticSignInfo                   = { fg = colors.inf, },
        DiagnosticVirtualTextHint            = { fg = colors.hin, },
        DiagnosticUnderlineHint              = { fg = colors.hin, },
        DiagnosticFloatingHint               = { fg = colors.hin, },
        DiagnosticSignHint                   = { fg = colors.hin, },
    }
    return lsp
end

theme.loadLspIcons = function() 
    local lsp = {
        LspDiagnosticsSignError = {
            text = "", 
            texthl = "LspDiagnosticsDefaultError"
        },
        LspDiagnosticsSignWarning = {
            text = "", 
            texthl = "LspDiagnosticsDefaultWarning"
        },
        LspDiagnosticsSignInformation = {
            text = "", 
            texthl = "LspDiagnosticsDefaultInformation"
        },
        LspDiagnosticsSignError = {
            text = "",
            texthl = "LspDiagnosticsDefaultHint"
        },
    }
    return lsp
end

--[[
theme.loadTerminal = function ()
  vim.g.terminal_color_0  = colors.bg1
  vim.g.terminal_color_1  = colors.red
  vim.g.terminal_color_2  = colors.gre
  vim.g.terminal_color_3  = colors.yel
  vim.g.terminal_color_4  = colors.blu
  vim.g.terminal_color_5  = colors.pur
  vim.g.terminal_color_6  = colors.cya
  vim.g.terminal_color_7  = colors.fg2
  vim.g.terminal_color_8  = colors.bg4
  vim.g.terminal_color_9  = colors.red
  vim.g.terminal_color_10 = colors.gre
  vim.g.terminal_color_11 = colors.yel
  vim.g.terminal_color_12 = colors.blu
  vim.g.terminal_color_13 = colors.pur
  vim.g.terminal_color_14 = colors.cya
  vim.g.terminal_color_15 = colors.fg1
end
--]]

return theme
