local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡴⠖⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠲⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠙⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠀⠀⠀⣰⠋⠀⡆⢀⠀⠀⠀⢤⢾⣱⣜⣾⣧⣶⣶⣶⣿⣷⣷⣶⣦⣤⣄⡀⣼⣞⣆⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⡿⡏⡇⡄⢀⣼⣷⣿⣿⣿⣿⣿⣿⡿⠿⣿⡿⠿⠿⠿⠿⢿⣿⣿⣿⣢⡀⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⣰⡇⠀⠀⣤⠻⡽⣼⣿⣿⣿⣿⡿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠷⢦⣀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⣿⠀⠀⠀⣌⢷⣿⣿⡿⠟⢋⡡⠀⠀⢀⣠⣤⣴⣶⣿⣿⣿⣿⣿⣷⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⣈⡙⠶⣤⡀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⣿⠀⠀⢦⣸⠛⠛⢁⡀⣀⣈⢀⣴⣾⣿⣿⣿⠏⣿⢿⣿⣿⣿⡏⠈⢻⣿⠿⣿⣶⣔⢿⣦⣠⣮⣽⠛⠀⠀⠙⢦⠀⠀",
   " ⠀⠀⠀⠀⠀⢿⠀⣠⠞⢩⣴⣿⡿⡿⣯⣷⣿⣿⣿⣿⣿⠏⢠⡿⢸⣿⣿⡟⠀⠀⠀⢻⡆⠘⣿⣿⣷⣝⠺⣿⣦⠀⠀⠀⠀⠀⢳⡀",
   " ⠀⠀⠀⠀⠀⣨⠟⠁⠐⢷⡹⠋⣰⣿⣿⣿⣿⣿⣿⣿⠏⠀⢸⠃⢸⣿⡟⠀⠀⠀⠀⠸⡇⠀⠘⣿⣿⣿⣷⣄⡁⠀⠀⠀⠀⠀⠈⡇",
  "  ⠀⠀⠀⣠⠞⠁⠀⠀⠀⠈⢀⣼⣿⣿⣿⣿⠏⢸⣿⠇⠀⠠⠏⠀⢸⠏⠀⠀⠀⠀⠀⠀⠇⠀⠀⢸⣿⣿⣏⠉⡉⡀⠀⠀⠀⠀⣰⡇",
  "  ⠀⠀⡼⠁⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⡟⠀⢸⡟⠀⠀⠀⠀⠘⡏⣀⣿⡒⡿⠀⠀⠀⣀⠀⠀⠈⣿⣿⣿⣧⣿⣿⡆⠀⠀⣠⠏⠀",
  "  ⠀⣼⠃⠀⢀⣶⣖⡄⠀⣾⣿⣿⣿⣿⣿⠃⠀⢸⣛⣲⣦⣤⣤⣤⣴⡟⠙⣷⣤⣤⠴⠾⠥⣤⡀⠀⣿⣿⡿⠿⣿⣿⠃⢀⡴⠁⠀⠀",
 "   ⢸⡇⠀⠀⣼⣸⣻⢀⢰⣿⣿⣿⣿⣿⣿⠀⠸⢿⣶⣶⣦⠶⠋⡼⠟⠀⠀⡏⠉⣟⠻⣿⠿⣋⠁⠀⣿⣿⣮⣨⡾⣣⡼⠋⠀⠀⠀⠀",
 "   ⢸⡇⠀⠀⣿⣿⢸⡻⣸⣿⡟⣭⢿⣿⡽⠄⠀⠀⠀⠀⠀⠀⠀⣠⣶⡀⠀⢻⣲⡦⣉⡋⠙⠏⠀⢸⠋⣞⣹⠗⠋⠁⠀⠀⠀⠀⠀⠀",
 "   ⠘⣇⠀⠀⢿⣾⣯⣝⠮⢹⣇⠇⣷⡹⣧⠀⠀⠀⠀⢀⡠⠚⠀⠀⠈⠁⠀⠘⠉⠀⠀⠙⢦⠀⠀⢸⣾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠘⣆⠈⡪⠽⣿⣽⠶⠚⠻⣮⣙⠳⢿⡄⠀⠀⠀⠋⠀⠀⢀⣠⠤⠤⠤⠤⢄⣀⠀⠀⠈⠇⠀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠘⢶⣍⢻⠒⢺⠾⠩⠽⡇⣈⣙⣶⣷⡀⠀⠀⢀⡤⠚⠉⢀⣤⢴⢶⣤⣄⠉⠙⠲⢤⡀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠈⠉⠋⠉⠉⠉⠉⠉⠀⠀⠀⠈⠻⣦⣀⡉⢀⡠⠞⠉⢠⠏⠘⡄⠻⡍⠲⢦⣤⠷⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⡶⣤⣤⣄⣀⣤⣥⣤⣶⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
 "   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡏⠛⠿⢿⣿⣿⡿⣿⡃⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣴⠇⠀⠀⠀⠉⢻⣿⣿⣣⢿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣴⣶⣿⣿⣯⠀⠀⠀⠀⠀⠀⠘⠛⠋⠈⠋⠙⣿⣷⣦⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⣀⣼⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀",
  "  ⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀",

    --".............................''''.....:ooddxO0XNNNNNNNXXXXXXXXXXXNNNNX0xkk ",
    --".........             .............';cx0XXXXXNNNNNNNNNNNNNXXXXXXKKXXXXXOoo ",
    --"... .                          ..;xKNNNNNNNNNNNNNNNNNNNXXXXXXXXKKKKKKKKKxc ",
    --"                             .:OXWWWNNNNNNNWWNNNNNNNNNXXKKKKKXXXK0000O0KOc ",
    --"                            .cKWWWWNNNNNNNNWNNNNNXXXKXXXXKK00KKXKK0OOOkOOl ",
    --"                        ....lXXXXNNNNNNNNNWWWNNNX00KKKXXKKKK000KKK0kdddxOd ",
    --"                  .....  ..'0XKKXNNNNXNNNNWWWNNX0kkkxOOxkkkkkOOkkOkdllodxx ",
    --"           .....         ..xNXKKKNNNNNNNNWWWWNXKOxoc:;,;,,,;::ldxxdllllddx ",
    --". .............. .........oX0xdxOKXNNNNNNNWWNNKkoc:'.'Oxl.....',odocclodxd ",
    --",,;;;;:;.................xOl'.,clxKNNNNNNNNNXKkl;,'..;lo.......,oxocloodxd ",
    --"';:;;;::'...............'x;.,:;::l0XXXXXXXNX0Odl:;''',''....',;okdllldddxd ",
    --".;;;;;;;,.....'...'',''',c:',;:cokXXXXXXXKXXKxoolc::;:;;;;;;:codolllodxxxd ",
    --".,,;;;,,,.....'...',,''.',d:,;:oKXXKKKKK000000xdxdoddxdooolloolooododdxdxo ",
    --".....   ..  ..'.....     ,kdod0KXKK0000kkOOOOOOxxxxOOkkkdoooooxkxxddddxddo ",
    --"          .. .''..       oxcxKXK0000OkxxkkxkxxxxkkxkOkkdloodkO00kxdoddoooo ",
    --"              .'..      .kd:cO0OOOkxdlllooddoooodxxxkkkxddxkO00Oxooloollll ",
    --"              .'...     lOdxOOkxxdollclclllolclodxxxdddxxxxxkkOxolllllcooo ",
    --"              .....  ..;O0Okxdoollccccccloooooodxkxxdoloddxkxxxolccccclooo ",
    --"            .... ..  ..dOkxxollcccc:::cllloodxxxkxxddllllodxxoolc::ccclool ",
    --"    ..      ........'cddoollc::;::::cccclooddxkxxddolllcccllollc:::cccllll ",
    --"...''',,,,'....'',;loc:::;;:;;,,,,,;;::cllodddxxdolcclcc::cccccc::ccclllcl ",
    --",,,,,,,,,'...''',:l:;;;;;;:;;;;;;,,'',;:coodxxddoloooool::::cllc::cccccccc ",
    --"',,,,,,'...',,,,;cccccllllcc:::::;,...',:cldxdxxddooddolc:cclllc::::cccccc ",
    --";;:::;;,..,;::::lloooodxddoccc:::;,''..,;clldddoddooloolccllllc::::ccccccc ",
    --"ccccccc:,';::cllollllllooolc:::;;;,'....',:looloddddooollllllc::::ccccllll ",
    --"llllllcllllldkkxxdllcccc::.  .:::,'......',;clllloloolllllllcccccccclllllo ",
    --"oloooooooooxk00kkxdc;';;;;,.. ........ ...',:ll:clllcclclllllccclllllloooo ",
    --"ddoodddddddkOKOkOOkd;......,,'......  .....,;;;cllccllcclcc:lllllllllooodd ",
    --"ddddxxxxxxxk00OO0Okd:.      ...............'',:lc:clcccccc,;lclllllooooddo ",
    --"ddxxxxxxkkxk00OOOOOxc'         .............,;:c:ccccclc:;:llllllooooodddl ",
    --"xxxxxkxxkkkxkOkkkOOxl;'.       ............,;ccccc:::lllooddooooooooddddol ",
    --"xxxkkkkkkkkkxkkxxkkxo:;,,'''',,;,;,,,,'''';:;::::::ldkkkkxdxkkkxxxdddddooo ",
    --"xkkkkOkkkkkkkkkxxxxxdc;;;;;;;;;;:::;;;;,.....',,;cdOO00OOxxddxkkOkxxdddxdo ",
    --"                                                    ",
    --" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    --" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    --" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    --" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    --" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    --" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    --"                                                    "
}

-- vim.cmd('hi custom <my values>')
-- vim.cmd('hi custom')
--dashboard.section.header.opts.hl = "Error" -- custom
--dashboard.section.buttons.opts.hl = "Debug"
--dashboard.section.footer.opts.hl = "Conceal"
--dashboard.config.opts.noautocmd = true

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "n", "  > New File", "<CMD>ene!<CR>"),
    dashboard.button( "f", "  > Find File", "<CMD>Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent Files", "<CMD>Telescope oldfiles<CR>"),
    dashboard.button( "t", "  > Find in Files", "<CMD>Telescope live_grep<CR>"),
    dashboard.button( "c", "  > Configuration", "<CMD>cd $HOME/.config/nvim | Telescope find_files<CR>"),
}
dashboard.section.buttons.opts.hl = "Comment"

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
