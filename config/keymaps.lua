local keymap = vim.keymap


--new tabedit
keymap.set('n', 'te', ':tabedit<return>')

--new window
keymap.set('n', 'sp', ':split<return><C-w>w')
keymap.set('n', 'sv', ':vsplit<return><C-w>w')

--move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')

keymap.set('', '<C-a>', 'ggVG')
