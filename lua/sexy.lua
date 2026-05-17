local sexy = {}

function sexy.setup()
   local bg, fg, cursor_line, color_col, line_nr, float_bg, pmenu_sel, pmenu_bg

   if vim.o.background == "light" then
      -- ☀️ Light Mode Palette
      bg          = "#FAFAFA"
      fg          = "#282A2E"
      cursor_line = "#D0E1FD"
      color_col   = "#E0E0E0"
      line_nr     = "#9E9E9E"
      float_bg    = "#F0F0F0"
      pmenu_bg    = "#EAEAEA"
      pmenu_sel   = "#B3D4FC"
   else
      -- 🌙 Dark Mode Palette (Your original colors)
      bg          = "#282a2e"
      fg          = "#C5C8C6"
      cursor_line = "#0F3758"
      color_col   = "#2d3131"
      line_nr     = "#65737E"
      float_bg    = "#282a2e"
      pmenu_bg    = "#2d3131"
      pmenu_sel   = "#0F3758"
   end

   -- Basic UI (Using the dynamic colors)
   vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = bg })
   vim.api.nvim_set_hl(0, "CursorLine", { bg = cursor_line })
   vim.api.nvim_set_hl(0, "ColorColumn", { bg = color_col })
   vim.api.nvim_set_hl(0, "CursorLineNr", { fg = fg, bold = true })
   vim.api.nvim_set_hl(0, "LineNr", { fg = line_nr })
   vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })

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

   -- PreProc
   vim.api.nvim_set_hl(0, "PreProc", { fg = "#a624fa" })
   vim.api.nvim_set_hl(0, "Include", { fg = "#a624fa" })
   vim.api.nvim_set_hl(0, "Define", { fg = "#a624fa" })
   vim.api.nvim_set_hl(0, "Macro", { fg = "#a624fa" })
   vim.api.nvim_set_hl(0, "PreCondit", { fg = "#a624fa" })

   -- Special
   vim.api.nvim_set_hl(0, "Special", { fg = "#F258E1" })
   vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#F258E1" })
   vim.api.nvim_set_hl(0, "Tag", { fg = "#F258E1" })
   vim.api.nvim_set_hl(0, "Delimiter", { fg = "#F258E1" })
   vim.api.nvim_set_hl(0, "SpecialComment", { fg = "#F258E1" })
   vim.api.nvim_set_hl(0, "Debug", { fg = "#F258E1" })

   -- Floating windows (menus, popups, tooltips)
   vim.api.nvim_set_hl(0, "NormalFloat", { bg = float_bg, fg = fg })
   vim.api.nvim_set_hl(0, "FloatBorder", { bg = float_bg, fg = line_nr })
   vim.api.nvim_set_hl(0, "Pmenu", { bg = pmenu_bg, fg = fg })
   vim.api.nvim_set_hl(0, "PmenuSel",
      { bg = pmenu_sel, fg = (vim.o.background == "light" and "#000000" or "#FFFFFF"), bold = true })
   vim.api.nvim_set_hl(0, "PmenuThumb", { bg = pmenu_sel })
   vim.api.nvim_set_hl(0, "PmenuSbar", { bg = pmenu_bg })
   vim.api.nvim_set_hl(0, "LazyNormal", { bg = bg, fg = fg })
   vim.api.nvim_set_hl(0, "LazyBorder", { fg = line_nr })
   vim.api.nvim_set_hl(0, "LazyComment", { fg = "#5c6370" })

   vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#FF1E00" })
   vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#E5C07B" })
   vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#61AFEF" })
   vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#98C379" })
end

return sexy
