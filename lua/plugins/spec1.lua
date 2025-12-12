return {
   {
      "ibhagwan/fzf-lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {}
   },
   {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',                              -- automatically update parsers
      event = { "BufReadPost", "BufNewFile" },          -- lazy-load on file open
      dependencies = {
         'nvim-treesitter/nvim-treesitter-textobjects', -- optional
      },
      config = function()
         require('nvim-treesitter.configs').setup({
            ensure_installed = { "c", "cpp", "python", "lua", "rust", "javascript", "html", "css", "typescript", "sql", "markdown", "yaml" }, -- languages
            highlight = {
               enable = true,                                                                                                                 -- false will disable the whole extension
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
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = {
         "nvim-lua/plenary.nvim",
         "MunifTanjim/nui.nvim",
         "nvim-tree/nvim-web-devicons",
      },
      lazy = false,
      config = function()
         require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            window = {
               position = "left",
               width = 30,
               mappings = {
                  ["t"] = "none",
                  ["e"] = "none",
                  ["s"] = "none",
                  ["x"] = "none",
               },
            },
            filesystem = {
               follow_current_file = false,
               use_libuv_file_watcher = true,
               hijack_netrw_behavior = "open_current",
               use_popups_for_input = false,
               cwd_target = {
                  auto = "current",
               },
               filtered_items = {
                  hide_dotfiles = false,
                  hide_gitignored = false,
                  never_show = {},
               },
            },
         })
      end,
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
      "akinsho/bufferline.nvim", -- Buffers per page
      event = "VeryLazy",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         options = {
            diagnostics = "nvim_lsp",
            show_buffer_close_icons = true,
            show_close_icon = true,
            separator_style = "slant",
         },
      },
      config = function(_, opts)
         require("bufferline").setup(opts)
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
         ensure_installed = { "lua_ls", "basedpyright" },
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
               ["rust_analyzer"] = {
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
      dependencies = {
         "neovim/nvim-lspconfig",
         { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
      },
      ft = "python",
      opts = {
         search = {},
         options = {}
      },
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
   }
}
