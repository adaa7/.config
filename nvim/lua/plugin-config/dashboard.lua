
local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.custom_footer = {
  "",
  "",
  "https://github.com/nshen/learn-neovim-lua",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently files                      ",
    action = "NvimTreeToggle",
  },
  {
    icon = "  ",
    desc = "Edit keybindings                    ",
    action = "edit ~/.config/nvim/lua/init-keymaps.lua",
  },
  {
    icon = "  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.config/nvim/init.lua",
  },
  -- {
  --   icon = "  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Change colorscheme                  ",
  --   action = "ChangeColorScheme",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find file                           ",
  --   action = "Telescope find_files",
  -- },
  -- {
  --   icon = "  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}


db.custom_header = {
  [[]],
  [[     ██╗██╗   ██╗███████╗     ██╗██╗███╗   ██╗]],
  [[     ██║██║   ██║██╔════╝     ██║██║████╗  ██║]],
  [[     ██║██║   ██║█████╗       ██║██║██╔██╗ ██║]],
  [[██   ██║██║   ██║██╔══╝  ██   ██║██║██║╚██╗██║]],
  [[╚█████╔╝╚██████╔╝███████╗╚█████╔╝██║██║ ╚████║]],
  [[ ╚════╝  ╚═════╝ ╚══════╝ ╚════╝ ╚═╝╚═╝  ╚═══╝]],
  [[                                              ]],
  [[             [ version : 1.0.0 ]              ]],
  [[]],
  [[]],
}