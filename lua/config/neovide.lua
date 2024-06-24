
-- Neovide配置
if vim.g.neovide then
  -- 设置字体
  vim.o.guifont = "JetBrainsMono Nerd Font,楷体:h15:b"  -- 你可以根据需要更改字体名称和大小
  vim.opt.linespace = 0 -- Line spacing
  vim.g.neovide_scale_factor = 1.0 -- Scale
 
  -- In addition to setting the font itself, this setting allows to change the scale without changing the whole font definition. Very useful for presentations. See the FAQ section about this for a nice recipe to bind this to a hotkey.
  vim.g.neovide_text_gamma = 0.0
  vim.g.neovide_text_contrast = 0.5

  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  -- 设置透明背景
  vim.g.neovide_transparency = 0.75  -- 透明度，0到1之间
  vim.g.transparency = 0.75
  vim.g.neovide_background_color = "#0f1117" .. alpha()

  -- Window Blur (Currently macOS only)
  vim.g.neovide_window_blurred = true
  -- Setting g:neovide_window_blurred toggles the window blur state.The blurred level respects the g:neovide_transparency value between 0.0 and 1.0.
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
 
  -- Setting g:neovide_floating_blur_amount_x and g:neovide_floating_blur_amount_y controls the blur radius on the respective axis for floating windows.
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5

  vim.g.neovide_show_border = true
  vim.g.neovide_position_animation_length = 0.15
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_scroll_animation_far_lines = 1
  vim.g.neovide_hide_mouse_when_typing = false
  vim.g.neovide_underline_stroke_scale = 1.0
  -- Set the background option when Neovide starts. Possible values: light, dark, auto. On systems that support it, auto will mirror the system theme, and will update background when the system theme changes.
  vim.g.neovide_theme = 'dark'
  vim.g.experimental_layer_grouping = false
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_no_idle = true
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_fullscreen = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_profiler = false
  vim.g.neovide_touch_drag_timeout = 0.17
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.8
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_unfocused_outline_width = 0.125
  vim.g.neovide_cursor_smooth_blink = false
  -- railgun torpedo pixiedust sonicboom ripple wireframe
  vim.g.neovide_cursor_vfx_mode = "ripple"
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  vim.g.neovide_cursor_vfx_particle_density = 7.0
  vim.g.neovide_cursor_vfx_particle_speed = 10.0
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0
end
