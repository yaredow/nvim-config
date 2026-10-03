return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>oo', '<cmd>Obsidian quick_switch<cr>', desc = 'Obsidian: Find Note' },
    { '<leader>os', '<cmd>Obsidian search<cr>', desc = 'Obsidian: Search Text' },
    { '<leader>on', '<cmd>Obsidian new<cr>', desc = 'Obsidian: New Note' },
    { '<leader>ob', '<cmd>Obsidian backlinks<cr>', desc = 'Obsidian: Backlinks' },
    { '<leader>ow', '<cmd>Obsidian workspace<cr>', desc = 'Obsidian: Switch Workspace' },
    { '<leader>oc', '<cmd>Obsidian toggle_checkbox<cr>', desc = 'Obsidian: Toggle Checkbox' },
  },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    ui = {
      enable = false, -- handled by render-markdown.nvim
    },
    workspaces = {
      {
        name = 'work',
        path = '~/Documents/obsidian/notes/work',
      },
      {
        name = 'personal',
        path = '~/Documents/obsidian/notes/personal',
      },
    },
  },
}
