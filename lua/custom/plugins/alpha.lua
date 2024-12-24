return {
  'goolord/alpha-nvim',
  -- dependencies = { 'echasnovski/mini.icons' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    local function header()
      return {
        '                                                                                                                ',
        '                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '          ⠀           ⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣶⣾⣿⡿⠛⣒⣢⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⠀⠀⠀⠀⠀⢠⣴⣿⣿⣿⣿⣿⠟⢛⣫⣭⣤⣬⡛⠋⢰⣶⢶⣯⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⠀⠀⠀⣠⡾⣻⡽⣭⠙⣫⣥⣶⠿⠿⢛⣛⡛⣿⣿⡆⢻⣾⣿⣽⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '          ⠀           ⠀⣸⠏⠀⠘⢟⠃⢸⡿⠃⠤⠞⠛⣛⡿⢃⣿⣿⢇⣾⡿⡟⣧⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '          ⠀           ⢰⡟⢠⣴⣄⠀⢠⣈⠿⠶⠶⠞⣛⣩⣶⣿⣿⠋⡞⡜⢠⢱⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⢠⣾⢡⣾⣿⣿⣦⣈⠻⣷⣶⣶⣾⣿⣿⣿⠟⠁⠔⢀⠃⠟⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⣸⣿⣿⡟⠃⠙⣿⣿⣷⣮⣭⣉⣩⣭⣤⣴⣦⠀⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⣿⣿⣿⠃⢀⣤⣤⣍⡻⠿⢿⣿⣿⣿⣿⣿⣿⡀⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                     ⣿⣿⡿⢰⣿⠟⠛⠻⣷⡀⠀⠀⣠⣾⣿⣿⣿⣇⢻⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣤⣀⠀⠀⠀⠀⠀',
        '                     ⣿⣿⡇⣾⣿⠀⠀⠀⢹⡇⠀⣰⣿⣿⠟⠉⣀⣤⣤⣻⣿⣷⣦⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣦⡀⠀⠀',
        '                     ⢿⣿⡇⢿⣿⠀⠀⠀⢸⡇⢠⣿⡿⢋⣴⣾⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣶⣤⣤⣤⣤⣤⣤⣄⣀⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣷⡀⠀',
        '                     ⢸⣿⣷⢸⣿⠀⢰⡄⣼⠇⣾⣿⢱⣿⡏⠉⠀⣴⣦⡄⠉⠛⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠋⣉⣭⣥⣶⣶⣶⣾⣿⣿⣿⣷⣶⣦⡈⠻⣿⣿⣿⣶⣦⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣷⠀',
        '                     ⠈⢿⣿⡈⢻⣧⠀⠹⠏⢰⣿⡇⢹⣿⠀⠀⠀⡿⠛⢿⣧⠀⠈⢿⣿⣿⣿⠟⣫⣵⠶⠾⠟⠛⠛⠛⠛⠛⠛⠿⠿⢿⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⣿⡿⣿⣿⣧',
        '                      ⠘⣿⣧⡀⢻⣧⡀⠀⢸⣿⠇⠘⣿⡇⠀⠀⡇⠀⠀⢿⣷⠀⢸⣿⠟⣡⣿⠋⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣤⣤⡄⢹⣿⣿⡇⠀⠘⠋⢉⣀⣤⣤⣤⣄⣙⡻⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠇⢸⣿⣿',
        '⠀           ⠀          ⠘⢿⣷⡀⠹⢿⣶⣤⣿⡇⠀⠘⣿⣤⣀⣀⣠⣤⣾⠿⠃⠼⠉⣰⡿⠁⠀⠀⢀⣰⣶⡾⠿⠿⠿⠿⠿⣿⣿⣿⠏⢸⣿⡟⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠏⠀⣼⣿⡏',
        '⠀           ⠀⠀          ⠈⠻⣿⣄⠀⠙⠻⠿⣷⢠⡄⠉⠉⣛⣛⣛⣋⣁⣀⡀⠀⣠⣿⠁⠀⠀⣴⣿⠟⠁⠀⠀⢀⡀⠀⣠⣿⣿⠏⢀⣾⡿⢁⣼⣿⡿⠟⠛⠉⠉⠉⠙⠻⠿⣿⣿⣿⣷⡻⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣿⡿⣉⣴⢠⣿⣿⠀',
        '⠀           ⠀⠀          ⠀⠀⠈⠙⠳⡄⠀⣀⡴⠋⢁⣼⣿⢛⣹⣭⣯⡛⣻⣷⢠⣿⡇⠀⠀⣼⣿⣥⣤⣶⠖⠊⠁⢠⣾⣿⣿⠏⢠⣾⡟⣵⣿⠟⠁⠀⠀⢀⣤⣴⣶⣦⡀⠀⠘⢻⣿⣿⡇⢻⣿⣿⣿⣿⣶⣦⣤⣄⣀⡀⠀⣀⣠⣤⣤⣶⣿⣿⠟⢫⣽⣾⣿⢡⣿⣿⠃⠀',
        '⠀           ⠀⠀          ⠀⠀⣀⣤⣶⣾⣿⠋⠀⠐⠿⠿⣿⣶⠶⠾⠛⢁⣿⡏⣸⣿⠀⠀⠀⠙⠛⠋⠁⢀⣀⣴⣾⣿⣿⡿⢋⣴⣿⣟⣿⡿⠋⠀⣠⣴⣾⠿⠟⠛⠛⢿⣿⣶⡄⠀⢻⣿⣷⠀⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠿⠟⢛⣋⣥⣶⣾⣿⣿⠏⣠⣿⡿⠁⠀⠀',
        '⠀                     ⠀⠀⢀⣼⣿⣿⣿⣿⣿⣧⣤⣤⣤⣠⣤⣤⣤⣤⣴⣿⣿⡇⣿⣿⣤⣤⣤⣤⣤⣶⣿⣿⣿⠿⠟⠛⢃⣴⣿⡿⢣⣾⣿⠃⠀⣼⣿⠟⠁⠀⣠⣤⣶⣄⢻⣿⣿⡄⠀⢿⣿⠀⣼⣷⠙⣿⣿⣧⠀⠀⠀⠤⠀⠰⠞⠛⢛⣿⣿⣿⡿⠋⢀⣼⣿⡟⠁⠀⠀⠀',
        '⠀                     ⠀⢰⣿⣿⣿⣿⣿⣿⠟⠛⠛⢻⣿⣛⣛⠿⠿⠿⠿⠿⠛⠉⠛⠛⠛⠛⠛⠛⠉⠉⠉⢀⣀⣠⣴⣾⣿⡿⠟⠀⣿⣿⠇⢀⣼⡿⠁⢀⣴⠿⠟⠙⠿⣿⣆⠹⣿⣿⣄⠸⣿⠀⣿⣿⣄⠈⢿⣿⣷⣦⣴⣶⣶⣶⣾⣿⠿⠟⠋⢁⣤⣾⣿⠟⠉⠀⠀⠀⠀⠀',
        '          ⠀           ⢠⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠈⢿⣿⠛⡛⢶⣶⢌⠳⠶⣶⣶⣤⣤⣤⣤⣤⣶⣶⣶⣿⣿⣿⣿⣿⣿⡥⠄⢸⣿⣿⠀⢸⣿⣇⠐⠋⠁⠀⠀⠀⠀⣿⣿⣄⢿⣿⣿⡀⠟⢠⣿⣿⣿⣦⣌⣙⣛⣛⣛⣛⣛⣉⣉⣠⣤⣤⣶⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀',
        '          ⠀           ⣼⣿⣿⣿⣿⢿⣿⡇⠀⠀⠀⠀⠈⣿⣷⡌⠚⣡⣾⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠿⠟⠻⠛⠛⠛⠉⠁⠀⠀⢸⣿⣿⣄⠘⠛⠻⣿⣿⣿⣶⣾⣿⣿⣿⠟⠋⢸⣿⣿⣧⠀⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '          ⠀           ⠹⠋⠸⣿⠛⠃⠙⠧⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠿⣿⣷⣶⣤⣄⣀⣀⠀⠀⠀⣀⣀⣀⣀⣼⣿⣿⣿⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '     ⠀     ⠀           ⠀⠀⠀⠀⠀⠀⢀⣤⢴⣾⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢛⠻⢿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '     ⠀⠀⠀⠀⠀     ⠀           ⠀⠐⠛⠼⠿⠟⡹⠿⠿⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣭⣥⣶⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '     ⠀⠀⠀⠀⠀⠀⠀⠀⠀     ⠀           ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠛⠛⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠿⠟⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '                                                                                                                ',
        '                                                                                                                ',
      }
    end

    dashboard.section.header.val = header()

    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('c', '  Configuration', ':e $MYVIMRC <CR>'),
      dashboard.button('q', '  Quit Neovim', ':qa<CR>'),
    }

    local datetime = os.date '%d-%m-%Y  %H:%M:%S'

    dashboard.section.footer.val = datetime

    dashboard.section.footer.opts.hl = 'Constant'
    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Function'
    dashboard.section.buttons.opts.hl_shortcut = 'Type'
    dashboard.opts.opts.noautocmd = true

    alpha.setup(dashboard.opts)
  end,
}
