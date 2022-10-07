local line = require('galaxyline')
local section = line.section

-- Providers
local fileinfo = require('galaxyline.provider_fileinfo')
local condition = require('galaxyline.condition')
local lspclient = require('galaxyline.provider_lsp')

local modes = {
    n = 'Normal',
    i = 'Insert',
    c = 'Command',
    s = 'Select',
    S = 'Select',
    v = 'Visual',
    V = 'Visual',
    [''] = 'Visual',
    R = 'Replace',
    t = 'Terminal'
}

local colors = require('postmodern.colors')

section.left[1] = {
    FirstElement = {
        provider = function() return '▋ ' end,
        highlight = { colors.accent, colors.bg1 }
    },
}

section.left[2] = {
    Mode = {
        provider = function()
            local mode = modes[vim.fn.mode()]
            if mode then
                return mode .. ' '
            end
            return 'Mode '
        end,
        highlight = {colors.fg1, colors.bg1},
        separator = '',
        separator_highlight = {colors.bg1, colors.bg3},
    }
}

section.left[3] = {
    GitIcon = {
        provider = function() return '  ' end,
        highlight = {colors.git, colors.bg3},
    }
}

section.left[4] = {
    GitBranch = {
        condition = condition.check_git_workspace,
        provider = 'GitBranch',
        highlight = {colors.fg3, colors.bg3},
    }
}

section.left[5] = {
    GitSep = {
        provider = function() 
            if condition.check_git_workspace() then
                return ' '
            end
            return '- '
        end,
        highlight = {colors.fg2, colors.bg3},
        separator = '',
        separator_highlight = {colors.bg3, colors.bg2},
    }
}

section.left[6] = {
    LspError = {
        provider = function() return '  ' end,
        highlight = {colors.fg3, colors.bg2},
    }
}

section.left[7] = {
    LspErrCount = {
        provider = 'DiagnosticError',
        highlight = {colors.fg3, colors.bg2},
    }
}

section.left[8] = {
    LspWarn = {
        provider = function() return '  ' end,
        highlight = {colors.fg3, colors.bg2},
    }
}

section.left[9] = {
    LspErrCount = {
        provider = 'DiagnosticWarn',
        highlight = {colors.fg2, colors.bg2},
    }
}

section.left[10] = {
    LspSep = {
        provider = function() return '' end,
        highlight = {colors.fg2, colors.bg2},
        separator = '',
        separator_highlight = {colors.bg2, colors.bg},
    }
}

section.left[11] = {
    FileName = {
        provider = function()
            local icon = fileinfo.get_file_icon()
            local name = fileinfo.get_current_file_name()
            return ' ' .. icon .. name
        end,
        highlight = {colors.bg2, colors.bg1},
    }
}

section.right[1] = {
    LspName = {
        provider = function()
            local lspName = lspclient.get_lsp_client()
            if lspName == 'No Active Lsp' then
                return ''
            end
            return ' ' .. lspName .. ' '
        end,
        highlight = {colors.bg2, colors.bg1},
    }
}

section.right[2] = {
    FileEncode = {
        provider = function() 
            return fileinfo.get_file_encode():lower() .. ' '
        end,
        highlight = {colors.fg3, colors.bg2},
        separator = '',
        separator_highlight = {colors.bg2, colors.bg1},
    }
}

section.right[3] = {
    Percent = {
        provider = 'LinePercent',
        highlight = {colors.fg3, colors.bg3},
        icon = ' ',
        separator = '',
        separator_highlight = {colors.bg3, colors.bg2},
    }
}

