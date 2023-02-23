--[[ init.lua ]]

-- Impatient for faster loading
require('impatient')

-- LEADER
vim.g.mapleader = " " -- works across all nvim files

-- Color theme
require('kanagawa').setup({
    keywordStyle = { italic = false, bold = true },
})
vim.cmd("colorscheme kanagawa")

-- Highlight colors
vim.cmd([[
hi CursorLineNr guifg=#7e9cd8
" hi FoldColumn guifg=#4a4f54 guibg=#26292c
hi FoldColumn guifg=#29292c guibg=#26292c
" hi GitSignsAdd guibg=#193549 guifg=#3ad900
hi GitSignsChange guibg=#193549 guifg=#ffc600
hi GitSignsDelete guibg=#193549 guifg=#ff2600
hi ColorColumn guifg=NONE guibg=#204563 gui=NONE
]])

-- IMPORTS
require('plug') -- Plugins
require('vars') -- Variables
require('opts') -- Options
require('keys') -- Keymaps

-- Lua line
require("lualine").setup {
  options = {
    icons_enabled = false,
    theme = "auto",
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    section_separators = "",
    component_separators = "",
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      {
        "diff",
        source = diff,
      },
    },
    lualine_c = {
      "filename",
      {
        ime_state,
        color = { fg = "black", bg = "#f46868" },
      },
      {
        spell,
        color = { fg = "black", bg = "#a7c080" },
      },
    },
    lualine_x = {
      "encoding",
      {
        "fileformat",
        symbols = {
          unix = "unix",
          dos = "win",
          mac = "mac",
        },
      },
      "filetype",
    },
    lualine_y = { "progress" },
    lualine_z = {
      "location",
      {
        "diagnostics",
        sources = { "nvim_diagnostic" },
      },
      {
        trailing_space,
        color = "WarningMsg",
      },
      {
        mixed_indent,
        color = "WarningMsg",
      },
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "quickfix" },
}

----------------------------------------
-- PLUGINS initialization           ----
----------------------------------------

require("null-ls").setup({
    sources = {
    },
})

-- Symbols Outline (new tagbar)
require("symbols-outline").setup {
    show_guides = false,
    position = 'left',
    width = 35,
    wrap = false,
    keymaps = { fold = "h", unfold = "l", fold_all = "zM", unfold_all = "zR" },
    symbols = {
        File = { icon = "", hl = "@text.uri" },
        Module = { icon = "全", hl = "@namespace" },
        Namespace = { icon = "凜", hl = "@namespacee" },
        Package = { icon = "", hl = "@namespacee" },
        Class = { icon = "", hl = "@type" },
        Method = { icon = "", hl = "@method" },
        Property = { icon = "", hl = "@method" },
        Field = { icon = "", hl = "@field" },
        Constructor = { icon = "", hl = "@constructor" },
        Enum = { icon = "", hl = "@type" },
        Interface = { icon = "ﰮ", hl = "@type" },
        Function = { icon = "", hl = "@function" },
        Variable = { icon = "", hl = "@constant" },
        Constant = { icon = "", hl = "@constant" },
        String = { icon = "", hl = "@string" },
        Number = { icon = "#", hl = "@number" },
        Boolean = { icon = "⊨", hl = "@boolean" },
        Array = { icon = "", hl = "@constant" },
        Object = { icon = "", hl = "@type" },
        Key = { icon = "🔐", hl = "@type" },
        Null = { icon = "ﳠ", hl = "@type" },
        EnumMember = { icon = "", hl = "@field" },
        Struct = { icon = "", hl = "@type" },
        Event = { icon = "🗲", hl = "@type" },
        Operator = { icon = "+", hl = "@operator" },
        TypeParameter = { icon = "", hl = "@parameter" }
    },
}

-- Better escape
require("better_escape").setup {
    mapping = { "jk", "kj" }, -- a table with mappings to use
    timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    clear_empty_lines = false, -- clear line after escaping if there is only whitespace
    keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
}


-- FTerm
require 'FTerm'.setup({
    border     = 'single',
    -- cmd = os.getenv('SHELL'),
    cmd        = 'fish',
    blend      = 0,
    dimensions = {
        height = 0.9,
        width = 0.9,
    },
})
vim.keymap.set('n', 't', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Headlines for Markdown
require "headlines".setup()


-- Fidget - show status of LSP progress
require "fidget".setup {
    window = {
        relative = "editor",
        blend = 10,
    },
}


-- Hop
require 'hop'.setup {
    keys = 'etovxqpdygfblzhckisuran',
    jump_on_sole_occurrence = false,
}


-- Ident Lines
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#2d3033 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#2d3033 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#2d3033 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#2d3033 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#2d3033 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#2d3033 gui=nocombine]]

require("indent_blankline").setup {
    -- char = '┊',
    char = ' ',
    use_treesitter = true,
    use_treesitter_scope = true,
    show_first_indent_level = true,
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}


-- Todo Comments Setup
require('todo-comments').setup {
    colors = {
        error = { "DiagnosticError", "ErrorMsg", "#de5d68" },
        warning = { "DiagnosticWarning", "WarningMsg", "#eeb927" },
        info = { "DiagnosticInfo", "#57a5e5" },
        hint = { "DiagnosticHint", "#bb70d2" },
        default = { "Identifier", "#de5d68" },
    },
}


-- Trouble Setup
require('trouble').setup {
    position = "right",
    width = 75,
    padding = true,
    auto_preview = false,
}


-- Nvim Tree Setup
require('nvim-tree').setup {
    sort_by = "case_sensitive",
    view = {
        adaptive_size = false,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
        icons = {
            git_placement = "after",
            glyphs = {
                git = {
                    unstaged = "-",
                    staged = "s",
                    untracked = "u",
                    renamed = "r",
                    deleted = "d",
                    ignored = "i",
                },
            },
        },
    },
    filters = {
        dotfiles = false,
    },
    git = {
        ignore = false,
    },
}


-- Telescope Setup
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "^./.git/",
            "^./target/",
            "LICENSE*"
        },
        layout_strategy = 'vertical',
        layout_config = { height = 0.95, width = 0.95 },
    },
    extensions = {
        media_files = {
            -- filetypes whitelist
            -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
            filetypes = { "png", "webp", "jpg", "jpeg", "ppm", "pdf" },
            find_cmd = "rg", -- find command (defaults to `fd`)
        },
    },
}
-- load extension to support preview of media files
require('telescope').load_extension('media_files');
-- Get fzf loaded and working with extension
require('telescope').load_extension('fzf')


-- Autopairs Setup
require 'nvim-autopairs'.setup {}


-- Mason Setup
require("mason").setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
    }
})
require("mason-lspconfig").setup()


-- Comment Setup
require('Comment').setup({
    mappings = {
        basic = false,
        extra = false,
        extended = false,
    },
})

-- Crates Nvim
require('crates').setup({

})

----------------------------------------
-- LSP Server Configurations        ----
----------------------------------------

-- LSP Config
local nvim_lsp = require 'lspconfig'

-- Cpp
-- -------------------------------------

require("ccls").setup({
    lsp = {
        -- Check `:help vim.lsp.start` for config options.
        server = {
            name = "ccls",  -- String name.

            args = {},

            -- autostart = false,  -- Does not seem to work here.

            offset_encoding = "utf-32",  -- Default value set by plugin.

            root_dir = vim.fs.dirname(vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1]),

            init_options = {
                index = {
                    threads = 0;
                };

                clang = {
                    excludeArgs = { "-frounding-math" };
                };
            },

            -- |> Fix diagnostics.
            flags = lsp_flags,
            -- |> Attach LSP keybindings & other crap.
            on_attach = aum_general_on_attach,
            -- |> Add nvim-cmp or snippet completion capabilities.
            capabilities = completion_capabilities,
            -- |> Activate custom handlers.
            handlers = aum_handler_config,
        },
    },

    win_config = {
        -- Sidebar configuration.
        sidebar = {
            size = 50,
            position = "topleft",
            split = "vnew",
            width = 50,
            height = 20,
        },

        -- Floating window configuration. check :help nvim_open_win for options.
        float = {
            style = "minimal",
            relative = "cursor",
            width = 50,
            height = 20,
            row = 0,
            col = 0,
            },
    },
    filetypes = {"c", "cpp"},
})

-- RUST
-- -------------------------------------
local rt = require("rust-tools")

rt.setup({
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
})



-- LUA
-- -------------------------------------
require 'lspconfig'.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                version = 'Lua 5.4',
                path = {
                    '?.lua',
                    '?/init.lua',
                    vim.fn.expand '~/.luarocks/share/lua/5.4/?.lua',
                    vim.fn.expand '~/.luarocks/share/lua/5.4/?/init.lua',
                    '/usr/share/5.4/?.lua',
                    '/usr/share/lua/5.4/?/init.lua'
                }
            },
            workspace = {
                library = {
                    vim.fn.expand '~/.luarocks/share/lua/5.4',
                    '/usr/share/lua/5.4'
                }
            }
        }
    }
}


-- LatEx with TexLab
require 'lspconfig'.texlab.setup {
    texlab = {
        auxDirectory = ".",
        bibtexFormatter = "texlab",
        build = {
            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
            executable = "latexmk",
            forwardSearchAfter = false,
            onSave = false
        },
        chktex = {
            onEdit = false,
            onOpenAndSave = false
        },
        diagnosticsDelay = 300,
        formatterLineLength = 80,
        forwardSearch = {
            args = {}
        },
        latexFormatter = "latexindent",
        latexindent = {
            modifyLineBreaks = false
        }
    }
}


-- Marksman
require 'lspconfig'.marksman.setup {
}

----------------------------------------
-- COMPLETION Setup                 ----
----------------------------------------

require('lspkind').init({
    -- mode = 'symbol_text'
})


vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 350)

local lspkind = require('lspkind')
local cmp = require 'cmp'

cmp.setup({
    -- Enable LSP snippets
    snippet = {
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For 'vsnip' users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = {
        -- Add tab support
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm { select = false }
    },
    -- Installed sources:
    sources = {
        { name = 'path' }, -- file paths
        { name = 'nvim_lsp', keyword_length = 1, priority = 10 }, -- from language server
        { name = 'crates', keyword_length = 1, priority = 10 },
        { name = 'luasnip', keyword_length = 1, priority = 7 }, -- for lua users
        { name = 'nvim_lsp_signature_help', priority = 8 }, -- display function signatures with current parameter emphasized
        { name = 'nvim_lua', keyword_length = 1, priority = 8 }, -- complete neovim's Lua runtime API such vim.lsp.*
        { name = 'buffer', keyword_length = 1, priority = 5 }, -- source current buffer
        -- { name = 'vsnip', keyword_length = 2 },         -- nvim-cmp source for vim-vsnip
        { name = 'calc' }, -- source for math calculation
    },
    window = {
        completion = {
            cmp.config.window.bordered(),
            col_offset = 3,
            side_padding = 1,
        },
        documentation = cmp.config.window.bordered(),

    },
    formatting = {
        fields = { 'menu', 'abbr', 'kind' },
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- show only symbol annotations
            maxwidth = 60, -- prevent the popup from showing more than provided characters
            -- The function below will be called before any actual modifications from lspkind:
            before = function(entry, vim_item)
                local menu_icon = {
                    nvim_lsp = 'λ ',
                    luasnip = '⋗ ',
                    buffer = 'Ω ',
                    path = '🖫 ',
                }
                vim_item.menu = menu_icon[entry.source.name]
                return vim_item
            end,
        })

    },
    preselect = cmp.PreselectMode.None,
    confirmation = {
        get_commit_characters = function(commit_characters)
            return {}
        end
    },
})

-- `/` cmdline setup.
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

----------------------------------------
-- TREE-SITTER Setup                ----
----------------------------------------

require('nvim-treesitter.configs').setup {
    ensure_installed = { "bash", "c", "cpp", "cmake", "css", "dockerfile", "go", "gomod", "gowork", "hcl", "help", "html",
    "http", "javascript", "json", "lua", "make", "markdown", "python", "regex", "ruby", "rust", "toml", "vim", "yaml",
    "zig" },
    auto_install = true,
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<S-Tab>", -- normal mode
            node_incremental = "<Tab>", -- visual mode
            node_decremental = "<S-Tab", -- visual mode
        },
    },
    ident = { enable = true },
    rainbow = {
        enable = true,
    }
}


------------------------------------
-- Nvim UFO - GOOD FOLDING      ----
--https://github.com/kevinhwang91/nvim-ufo
-- ---------------------------------
vim.cmd([[
augroup MyColors
autocmd!
augroup end
]])

vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = true,
    lineFoldingOnly = true
}
local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
    require('lspconfig')[ls].setup({
        capabilities = capabilities
        -- you can add other fields for setting up lsp server in this table
    })
end
require('ufo').setup()

-- Option 3: treesitter as a main provider instead
-- Only depend on `nvim-treesitter/queries/filetype/folds.scm`,
-- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
-- local ftMap = {
--     python = '',
--     cpp = '',
--     lua = '',
-- }
-- require('ufo').setup({
--     provider_selector = function(bufnr, filetype)
--         return ftMap[filetype]
--     end
-- })
-- require('ufo').setup({
--     provider_selector = function(bufnr, filetype, buftype)
--         return {'treesitter', 'indent'}
--     end
-- })
-- Hide foldcolumn for transparency
-- vim.opt.foldcolumn = '0'


------------------------------------
-- DIFFVIEW                     ----
-- -https://github.com/sindrets/diffview.nvim
-- --------------------------------
-- Lua
local actions = require("diffview.actions")

require("diffview").setup({
})

-- LSP FUZZY --
require('lspfuzzy').setup()

require('pqf').setup()

require('bufferline').setup {}
