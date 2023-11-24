vim.o.guifont = 'Hack:h11:#h-10'
vim.g.neovide_floating_blur_amount_x = 10.0
vim.g.neovide_floating_blur_amount_y = 10.0
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
vim.g.neovide_transparency = 0.9
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_fullscreen = false
vim.g.neovide_remember_window_size = true
vim.g.neovide_profiler = false
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_trail_size = 0.5
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_vfx_mode = "ripple"
vim.api.nvim_set_keymap("v", "<C-C>", '"+y', {desc = "yank to system clipboard"})
vim.api.nvim_set_keymap("n", "<C-V>", '"+p', {desc = "paste from system clipboard"})
