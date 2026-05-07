return {
   {
      "ibhagwan/fzf-lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {}
   },
   {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
      event = { "BufReadPost", "BufNewFile" },
      dependencies = {
         'nvim-treesitter/nvim-treesitter-textobjects',
      },
      config = function()
         require('nvim-treesitter.configs').setup({
            ensure_installed = { "c", "cpp", "python", "lua", "rust", "javascript", "html", "css", "typescript", "sql", "markdown", "yaml" },
            highlight = {
               enable = true,
               additional_vim_regex_highlighting = false,
            },
            indent = {
               enable = false
            },
            textobjects = {
               select = {
                  enable = true,
                  lookahead = true,              -- jump forward to textobject
                  keymaps = {
                     ["af"] = "@function.outer", -- select around function
                     ["if"] = "@function.inner", -- select inside function
                     ["ac"] = "@class.outer",    -- select around class
                     ["ic"] = "@class.inner",    -- select inside class
                     ["at"] = "@block.outer",    -- select around any block
                     ["it"] = "@block.inner",    -- select inside any block
                  },
               },
            },
         })
      end
   },
   {
      "lukas-reineke/indent-blankline.nvim", -- Creates the indent lines
      main = "ibl",
      opts = {},
   },
   {
      "numToStr/Comment.nvim", -- Comment stuff
      lazy = false,
      config = function()
         require('Comment').setup({
            padding = true,
            sticky = true,
            ignore = '^$',
            toggler = {
               line = 'gcc',
               block = 'gbc',
            },
            opleader = {
               line = 'gc',
               block = 'gb',
            },
         })
      end,
   },
   {
      "RRethy/vim-illuminate", -- Underline selected words
      event = "VeryLazy",
      opts = {
         delay = 100,
         under_cursor = true,
         large_file_cutoff = 2000,
      },
      config = function(_, opts)
         require('illuminate').configure(opts)
      end,
   },
   {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
   },
   -- Mason
   { 'mason-org/mason.nvim', opts = {} },

   -- Mason-LSPConfig
   {
      'mason-org/mason-lspconfig.nvim',
      dependencies = { 'mason-org/mason.nvim', 'neovim/nvim-lspconfig' },
      opts = {
         ensure_installed = { "lua_ls", "basedpyright", "clangd", "html", "cssls", "ts_ls", "bashls" },
         automatic_installation = true,
      }
   },

   -- nvim-lspconfig
   {
      'neovim/nvim-lspconfig',
      dependencies = { 'saghen/blink.cmp' },
      version = false,
      config = function()
         local capabilities = require('blink.cmp').get_lsp_capabilities()

         -- lua_ls setup
         vim.lsp.config('lua_ls', {
            capabilities = capabilities,
            settings = {
               Lua = {
                  runtime = { version = "LuaJIT" },
                  diagnostics = { globals = { "vim" } },
                  workspace = { checkThirdParty = false },
                  telemetry = { enable = false },
               },
            },
         })

         -- pyright setup
         vim.lsp.config('basedpyright', {
            capabilities = capabilities,
            settings = {
               basedpyright = {
                  disableOrganizeImports = false,
                  analysis = {
                     autoSearchPaths = true,
                     diagnosticMode = "openFilesOnly",
                     typeCheckingMode = "basic",
                     useLibraryCodeForTypes = true,
                  },
               },
            },
         })

         vim.lsp.config('clangd', {
            capabilities = capabilities,
         })

         vim.lsp.config('rust_analyzer', {
            capabilities = capabilities,
            settings = {
               ["rust-analyzer"] = {
                  checkOnSave = {
                     command = "clippy",
                     extraArgs = { "no-deps" },
                  },
               },
               cargo = { allFeatures = true },
               procMacro = { enable = true },
            },
         })

         vim.lsp.config('html', {
            capabilities = capabilities,
         })

         vim.lsp.config('cssls', {
            capabilities = capabilities,
         })

         vim.lsp.config('typescript', {
            capabilities = capabilities,
         })

         vim.lsp.config('bashls', {
            capabilities = capabilities,
         })
      end,
   },
   -- blink.cmp
   {
      'saghen/blink.cmp',
      version = '1.*',
      dependencies = { 'rafamadriz/friendly-snippets' },
      opts = {
         keymap = { preset = 'super-tab' },
         completion = { documentation = { auto_show = false } },
         sources = { default = { 'lsp', 'buffer', 'path', 'snippets' } },
         fuzzy = { implementation = "prefer_rust_with_warning" }
      }
   },
   {
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
         require("lsp_lines").setup()
         vim.diagnostic.config({ virtual_text = false }) -- disable inline text
      end,
   },
   {
      'akinsho/toggleterm.nvim',
      version = "*",
      config = function()
         require("toggleterm").setup {
            open_mapping = [[<C-n>]], -- <leader>t instead of Ctrl-\
            direction = "float",
            shade_terminals = true,
            size = 50,
            float_opts = { border = "curved" },
         }
      end,
   },
   {
      'nvimdev/lspsaga.nvim',
      config = function()
         require('lspsaga').setup({})
      end,
      dependencies = {
         'nvim-treesitter/nvim-treesitter',
         'nvim-tree/nvim-web-devicons',
      }
   },
   {
      "linux-cultist/venv-selector.nvim",
      branch = "regexp",
      dependencies = { "neovim/nvim-lspconfig" },
      ft = "python",
      opts = {},
   },
   {
      "stevearc/conform.nvim",
      opts = {
         format_on_save = {
            lsp_fallback = true,
         },
         formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
            rust = { "rustfmt" },
            c = { "clang-format" },
            cpp = { "clang-format" },
         }
      }
   },
   {
      "stevearc/oil.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
         require("oil").setup({
            default_file_explorer = true,
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            watch_for_changes = true,
            columns = { "icon" },
            view_options = {
               show_hidden = true, -- show dotfiles by default
               natural_order = "fast",
               sort = {
                  { "type", "asc" },
                  { "name", "asc" },
               },
            },
            float = {
               padding = 2,
               border = "rounded",
            },
            keymaps = {
               ["<CR>"] = "actions.select",
               ["<BS>"] = { "actions.parent", mode = "n" },
               ["-"]    = { "actions.close", mode = "n" },
               ["."]    = { "actions.toggle_hidden", mode = "n" },
            },
            use_default_keymaps = false, -- only use what's above
         })
      end,
   },
}
