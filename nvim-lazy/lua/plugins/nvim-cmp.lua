return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- Lazy load on entering insert mode
  dependencies = {
    -- LSP completion source
    "hrsh7th/cmp-nvim-lsp",
    -- Buffer completion source
    "hrsh7th/cmp-buffer",
    -- Path completion source
    "hrsh7th/cmp-path",
    -- Snippet engine (LuaSnip recommended)
    "L3MON4D3/LuaSnip",
    -- Snippet source for nvim-cmp
    "saadparwaiz1/cmp_luasnip",
    -- Optional: a collection of popular snippets
    "rafamadriz/friendly-snippets",
  },
  config = function()
    -- Set up nvim-cmp
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body) -- Use LuaSnip to expand snippets
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- For snippets
        { name = "buffer" }, -- For buffer words
        { name = "path" }, -- For file system paths
      }),
      -- Other optional configurations
      completion = {
        completeopt = "menu,menuone,noselect", -- Faster performance by not preselecting
      },
      window = {
        completion = cmp.config.window. recent_
      }
    })

    -- Optional: Set up specific autocompletion for the command line
    cmp.setup.cmdline('/', {
      sources = cmp.config.sources({
        { name = 'buffer' }
      })
    })
    cmp.setup.cmdline(':', {
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })

  end,
}

