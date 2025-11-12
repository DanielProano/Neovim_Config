local sexy = {}

function sexy.setup()
    -- Basic UI
    vim.api.nvim_set_hl(0, "Normal", { fg = "#C5C8C6", bg = "#282a2e" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#0F3758" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2d3131" })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#373b41" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#0F3758", bold = true })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#65737E" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "#282a2e" })  

    -- Comments
    vim.api.nvim_set_hl(0, "Comment", { fg = "#65737E", italic = true })
    
    -- Statements
    vim.api.nvim_set_hl(0, "Statement", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "Conditional", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "Repeat", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "Label", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "Operator", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "Exception", { fg = "#F0C673", bold = true })
    
    -- Functions
    vim.api.nvim_set_hl(0, "Function", { fg = "#01d3fb" })
    
    -- Constants
    vim.api.nvim_set_hl(0, "Constant", { fg = "#EF3112" })
    vim.api.nvim_set_hl(0, "String", { fg = "#659B2C" })
    vim.api.nvim_set_hl(0, "Number", { fg = "#EF3112" })
    vim.api.nvim_set_hl(0, "Boolean", { fg = "#EF3112" })
    vim.api.nvim_set_hl(0, "Float", { fg = "#EF3112" })
    vim.api.nvim_set_hl(0, "Character", { fg = "#EF3112" })

    -- Types
    vim.api.nvim_set_hl(0, "StorageClass", { fg = "#F58435" })
    vim.api.nvim_set_hl(0, "Structure", { fg = "#F58435" })
    vim.api.nvim_set_hl(0, "Typedef", { fg = "#F58435" })
    vim.api.nvim_set_hl(0, "Type", { fg = "#F58435" })

    --PreProc
    vim.api.nvim_set_hl(0, "PreProc", { fg = "#a624fa" })
    vim.api.nvim_set_hl(0, "Include", { fg = "#a624fa" })
    vim.api.nvim_set_hl(0, "Define", { fg = "#a624fa" })
    vim.api.nvim_set_hl(0, "Macro", { fg = "#a624fa" })
    vim.api.nvim_set_hl(0, "PreCondit", { fg = "#a624fa" })

    --Special
    vim.api.nvim_set_hl(0, "Special", { fg = "#F258E1" })
    vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#F258E1" })
    vim.api.nvim_set_hl(0, "Tag", { fg = "#F258E1" })
    vim.api.nvim_set_hl(0, "Delimiter", { fg = "#F258E1" })
    vim.api.nvim_set_hl(0, "SpecialComment", { fg = "#F258E1" })
    vim.api.nvim_set_hl(0, "Debug", { fg = "#F258E1" })
    
    -- Floating windows (menus, popups, tooltips)
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282a2e", fg = "#C5C8C6" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#282a2e", fg = "#65737E" })
    vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2d3131", fg = "#C5C8C6" })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#0F3758", fg = "#FFFFFF", bold = true })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#0F3758" })
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = "#2d3131" })

    -- Neo-tree specific tweaks
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#282a2e", fg = "#C5C8C6" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#282a2e", fg = "#C5C8C6" })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#01d3fb", bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#01d3fb" })
    vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#65737E" })
    vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = "#282a2e", bg = "#F0C673", bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "#282a2e", fg = "#65737E" })

    vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#282a2e", fg = "#C5C8C6" })
    vim.api.nvim_set_hl(0, "LazyBorder", { fg = "#65737E" })
    vim.api.nvim_set_hl(0, "LazyComment", { fg = "#5c6370" })

   vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff5555" })
   vim.api.nvim_set_hl(0, "DiagnosticWarn",  { fg = "#f1fa8c" })
   vim.api.nvim_set_hl(0, "DiagnosticInfo",  { fg = "#8be9fd" })
   vim.api.nvim_set_hl(0, "DiagnosticHint",  { fg = "#50fa7b" })
end

return sexy

