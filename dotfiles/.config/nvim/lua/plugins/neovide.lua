if vim.g.neovide then
  -- # Line spacing
  -- vim.opt.linespace = 0

  -- # Scale
  -- vim.g.neovide_scale_factor = 1.0

  -- # Text Gamma and Contrast
  -- vim.g.neovide_text_gamma = 0.0
  -- vim.g.neovide_text_contrast = 0.5

  -- # Padding
  -- vim.g.neovide_padding_top = 0
  -- vim.g.neovide_padding_bottom = 0
  -- vim.g.neovide_padding_right = 0
  -- vim.g.neovide_padding_left = 0

  -- # Floating Blur Amount
  -- vim.g.neovide_floating_blur_amount_x = 2.0
  -- vim.g.neovide_floating_blur_amount_y = 2.0

  -- # Floating Shadow
  -- vim.g.neovide_floating_shadow = true
  -- vim.g.neovide_floating_z_height = 10
  -- vim.g.neovide_light_angle_degrees = 45
  -- vim.g.neovide_light_radius = 5

  -- # Floating Corner Radius
  -- vim.g.neovide_floating_corner_radius = 0.0

  -- # Transparency
  -- vim.g.neovide_opacity = 0.8
  vim.g.neovide_normal_opacity = 0.95

  -- # Position Animation Length
  -- vim.g.neovide_position_animation_length = 0.15

  -- # Scroll Animation Length
  -- vim.g.neovide_scroll_animation_length = 0.3

  -- # Far scroll lines
  -- vim.g.neovide_scroll_animation_far_lines = 1

  -- # Hiding the mouse when typing
  -- vim.g.neovide_hide_mouse_when_typing = false

  -- # Underline automatic scaling
  -- vim.g.neovide_underline_stroke_scale = 1.0

  -- # Theme
  -- vim.g.neovide_theme = 'auto'

  -- # Layer grouping
  -- vim.g.experimental_layer_grouping = false

  -- # Refresh Rate
  vim.g.neovide_refresh_rate = 60

  -- # Idle Refresh Rate
  -- vim.g.neovide_refresh_rate_idle = 5

  -- # No Idle
  -- vim.g.neovide_no_idle = true

  -- # Confirm Quit
  -- vim.g.neovide_confirm_quit = true

  -- # Detach On Quit
  -- vim.g.neovide_detach_on_quit = 'always_quit'
  -- vim.g.neovide_detach_on_quit = 'always_detach'
  -- vim.g.neovide_detach_on_quit = 'prompt'

  -- # Fullscreen
  -- vim.g.neovide_fullscreen = true

  -- # Remember Previous Window Size
  vim.g.neovide_remember_window_size = true

  -- # Profiler
  -- vim.g.neovide_profiler = false

  -- # Cursor hack
  -- vim.g.neovide_cursor_hack = true

  -- # IME
  vim.g.neovide_input_ime = true

  -- # Cursor Settings
  -- vim.g.neovide_cursor_animation_length = 0.150
  -- vim.g.neovide_cursor_short_animation_length = 0.04
  -- vim.g.neovide_cursor_trail_size = 1.0
  vim.g.neovide_cursor_antialiasing = true
  -- vim.g.neovide_cursor_animate_in_insert_mode = true
  -- vim.g.neovide_cursor_animate_command_line = true
  -- vim.g.neovide_cursor_unfocused_outline_width = 0.125
  -- vim.g.neovide_cursor_smooth_blink = false

  -- vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_vfx_particle_phase = 1.5
  -- vim.g.neovide_cursor_vfx_particle_curl = 1.0

  -- vim.g.neovide_cursor_vfx_mode = "torpedo"
  -- vim.g.neovide_cursor_vfx_mode = "pixiedust"
  -- vim.g.neovide_cursor_vfx_mode = "sonicboom"
  -- vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_cursor_vfx_mode = "wireframe"

  vim.g.neovide_cursor_vfx_opacity = 100.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.0
  vim.g.neovide_cursor_vfx_particle_highlight_lifetime = 0.2
  vim.g.neovide_cursor_vfx_particle_density = 1.0
  vim.g.neovide_cursor_vfx_particle_speed = 100.0
  -- vim.g.neovide_has_mouse_grid_detection = true
end

return {}
