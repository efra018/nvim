vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    sort_by = "case_sensitive",
  --view = {
  --  mappings = {
  --    list = {
  --      { key = "u", action = "dir_up" },
  --    },
  --  },
  --},
    actions = {
        open_file = { quit_on_open = true }
    },
    update_focused_file = {
        enable = true,
        update_cwd = true
    },
    filters = {
        custom = { '^.git$', '^node_modules$' }
    },
    git = {
        enable = true
    },
    log = {
        enable = true,
        types = {
            diagnostics = true
        },
    },
    diagnostics = {
        enable = true,
        show_on_dirs = false,
        debounce_delay = 50,
        icons = {
            hint = '',
            info = '',
            warning = '',
            error = ''
        },
    },
    renderer = {
        indent_width = 2,
        --root_folder_label = true,
        --highlight_git = false,
        --highlight_opened_files = "none",
        indent_markers = {
        enable = true,
    },
    icons = {
        show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
        },
    },
},
  --on_attach = function(bufnr)
  --  vim.keymap.set('n', '<leader>nt', '<cmd>NvimTreeToggle<cr>',
  --    { desc = 'toggle', buffer = bufnr, noremap = true, silent = true, nowait = true })
  --end
})



--local options = {
--  filters = {
--    dotfiles = false,
--    exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
--  },
--  disable_netrw = true,
--  hijack_netrw = true,
--  hijack_cursor = true,
--  hijack_unnamed_buffer_when_opening = false,
--  sync_root_with_cwd = true,
--  update_focused_file = {
--    enable = true,
--    update_root = false,
--  },
--  view = {
--    adaptive_size = false,
--    side = "left",
--    width = 30,
--    preserve_window_proportions = true,
--  },
--  git = {
--    enable = false,
--    ignore = true,
--  },
--  filesystem_watchers = {
--    enable = true,
--  },
--  actions = {
--    open_file = {
--      resize_window = true,
--      quit_on_opne = false,
--    },
--  },
--  renderer = {
--    root_folder_label = false,
--    highlight_git = false,
--    highlight_opened_files = "none",
--
--    indent_markers = {
--      enable = false,
--    },
--
--    icons = {
--      show = {
--        file = true,
--        folder = true,
--        folder_arrow = true,
--        git = false,
--      },
--
--      glyphs = {
--        default = "",
--        symlink = "",
--        folder = {
--          default = "",
--          empty = "",
--          empty_open = "",
--          open = "",
--          symlink = "",
--          symlink_open = "",
--          arrow_open = "",
--          arrow_closed = "",
--        },
--        git = {
--          unstaged = "✗",
--          staged = "✓",
--          unmerged = "",
--          renamed = "➜",
--          untracked = "★",
--          deleted = "",
--          ignored = "◌",
--        },
--      },
--    },
--  },
--}
--
--return options




--vim.api.nvim_create_autocmd({"QuitPre"}, {
--    callback = function() vim.cmd("NvimTreeClose") end,
--})
--require("nvim-tree").setup({
--    actions = {
--        open_file = {
--            quit_on_open = false,
--        }
--    }
--})
--require'nvim-tree'.setup {
--  auto_reload_on_write = true,
--  disable_netrw = false,
--  hijack_cursor = false,
--  hijack_netrw = true,
--  hijack_unnamed_buffer_when_opening = false,
--  ignore_buffer_on_setup = false,
--  open_on_setup = false,
--  open_on_setup_file = false,
--  open_on_tab = false,
--  sort_by = "name",
--  update_cwd = false,
--  view = {
--    width = 30,
--    hide_root_folder = false,
--    side = "left",
--    preserve_window_proportions = false,
--    number = false,
--    relativenumber = false,
--    signcolumn = "yes",
--    mappings = {
--      custom_only = false,
--      list = {
--        -- user mappings go here
--      },
--    },
--  },
--  renderer = {
--    indent_markers = {
--      enable = false,
--      icons = {
--        corner = "└ ",
--        edge = "│ ",
--        none = "  ",
--      },
--    },
--    icons = {
--      webdev_colors = true,
--      git_placement = "before",
--    }
--  },
--  hijack_directories = {
--    enable = true,
--    auto_open = true,
--  },
--  update_focused_file = {
--    enable = true,
--    update_cwd = true,
--    ignore_list = {},
--  },
--  ignore_ft_on_setup = {},
--  system_open = {
--    cmd = "",
--    args = {},
--  },
--  diagnostics = {
--    enable = false,
--    show_on_dirs = false,
--    icons = {
--      hint = "",
--      info = "",
--      warning = "",
--      error = "",
--    },
--  },
--  filters = {
--    dotfiles = false,
--    custom = {},
--    exclude = {},
--  },
--  git = {
--    enable = true,
--    ignore = true,
--    timeout = 400,
--  },
--  actions = {
--    use_system_clipboard = true,
--    change_dir = {
--      enable = true,
--      global = false,
--      restrict_above_cwd = false,
--    },
--    open_file = {
--      quit_on_open = false,
--      resize_window = true,
--      window_picker = {
--        enable = true,
--        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
--        exclude = {
--          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
--          buftype = { "nofile", "terminal", "help" },
--        },
--      },
--    },
--  },
--  trash = {
--    cmd = "trash",
--    require_confirm = true,
--  },
--  log = {
--    enable = false,
--    truncate = false,
--    types = {
--      all = false,
--      config = false,
--      copy_paste = false,
--      diagnostics = false,
--      git = false,
--      profile = false,
--    },
--  },
--}





--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--
--require("nvim-tree").setup({
----    auto_close = true,
--})

--require("nvim-tree").setup({
--   open_on_setup = true,
--   auto_close = true,
--   sort_by = "case_sensitive",
--   view = {
--      width = 30,
--      mappings = {
--         list = {
--            { key = "u", action = "dir_up" },
--         },
--      },
--   },
--   actions = {
--      open_file = {
--         quit_on_open = true,
--      },
--   },
--   
--   renderer = {
--      group_empty = true,
--      indent_width = 2,
--      indent_markers = {
--         enable = true,
--         inline_arrows = true,
--         icons = {
--            corner = "└",
--            edge = "¦",
--            item = "¦",
--            bottom = "─",
--            none = " ",
--         },
--      },
--      icons = {
--         webdev_colors = true,
--         git_placement = "before",
--         modified_placement = "after",
--         padding = " ",
--         symlink_arrow = " ➛ ",
--         show = {
--            file = true,
--            folder = true,
--            folder_arrow = true,
--            git = true,
--            modified = true,
--         },
--         glyphs = {
--            default = "",
--            symlink = "",
--            bookmark = "",
--            modified = "●",
--            folder = {
--               --arrow_closed = "▶",
--               --arrow_open = "▼",
--               default = "",
--               open = "",
--               empty = "",
--               empty_open = "",
--               symlink = "",
--               symlink_open = "",
--            },
--            git = {
--               unstaged = "✗",
--               staged = "✓",
--               unmerged = "",
--               renamed = "➜",
--               untracked = "★",
--               deleted = "",
--               ignored = "◌",
--            },
--         },
--      },  },
--
--      --filters = {
--      --   dotfiles = true,
--      --},
--   })
