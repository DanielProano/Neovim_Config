local sexy = {}

function sexy.setup()
   -- Basic UI
   vim.api.nvim_set_hl(0, "Normal", { fg = "#C5C8C6", bg = "#282a2e" })
   vim.api.nvim_set_hl(0, "CursorLine", { bg = "#0F3758" })
   vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2d3131" })
   vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#C5C8C6", bold = true })
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
   vim.api.nvim_set_hl(0, "Function", { fg = "#81d4fa" })

   -- Constants
   vim.api.nvim_set_hl(0, "Constant", { fg = "#FF3D3D" })
   vim.api.nvim_set_hl(0, "String", { fg = "#98C379" })
   vim.api.nvim_set_hl(0, "Number", { fg = "#FF3D3D" })
   vim.api.nvim_set_hl(0, "Boolean", { fg = "#FF3D3D" })
   vim.api.nvim_set_hl(0, "Float", { fg = "#FF3D3D" })
   vim.api.nvim_set_hl(0, "Character", { fg = "#FF3D3D" })

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

   vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#282a2e", fg = "#C5C8C6" })
   vim.api.nvim_set_hl(0, "LazyBorder", { fg = "#65737E" })
   vim.api.nvim_set_hl(0, "LazyComment", { fg = "#5c6370" })

   vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF1E00" })
   vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#E5C07B" })
   vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#61AFEF" })
   vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#98C379" })
end

return sexy
