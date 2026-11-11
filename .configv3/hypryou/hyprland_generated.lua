-- DO NOT CHANGE THIS FILE, CHECK HYPRYOU SETTINGS
-- FOR CUSTOM CONFIG USE hyprland.conf

-- -- generate_env --
hl.env("BROWSER", "firefox")
hl.env("TERMINAL", "alacritty")
hl.env("EDITOR", "code")
hl.env("FILEMANAGER", "nautilus")
hl.env("XDG_UTILS_BROWSER", "firefox")
hl.env("XDG_UTILS_TERMINAL", "alacritty")
hl.env("XDG_UTILS_FILEMANAGER", "nautilus")

-- -- generate_binds --
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hypryouctl screenshot region"))
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("hypryouctl screenshot region freeze"))
hl.bind("SUPER + CTRL + S", hl.dsp.exec_cmd("hypryouctl screenshot window"))
hl.bind("SUPER + CTRL + F", hl.dsp.exec_cmd("hypryouctl screenshot window freeze"))
hl.bind("SUPER + ALT + S", hl.dsp.exec_cmd("hypryouctl screenshot active"))
hl.bind("SUPER + ALT + F", hl.dsp.exec_cmd("hypryouctl screenshot active freeze"))
hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd("hypryouctl toggle_animations"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("hypryouctl wallpaper random"))
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd("hypryouctl reload"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("hypryouctl lock"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("hypryouctl player play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("hypryouctl player pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("hypryouctl player next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("hypryouctl player previous"))
hl.bind("XF86Tools", hl.dsp.exec_cmd("hypryouctl settings"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("hypryouctl qalculate-gtk"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("hypryouctl toggle_window players"))
hl.bind("SUPER + period", hl.dsp.exec_cmd("hypryouctl open_window emojis"))
hl.bind("SUPER + CTRL + C", hl.dsp.exec_cmd("hypryouctl toggle_window cliphist"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("hypryouctl toggle_window cliphist"))
hl.bind("SUPER + SLASH", hl.dsp.exec_cmd("hypryouctl toggle_window keybindings"))
hl.bind("SUPER + CTRL + W", hl.dsp.exec_cmd("hypryouctl settings wallpaper"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("hypryouctl toggle_window apps_menu"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("hypryouctl toggle_window sidebar"))
hl.bind("SUPER + A", hl.dsp.exec_cmd("hypryouctl toggle_window clients"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("hypryouctl settings"))
hl.bind("SUPER + 0", hl.dsp.exec_cmd("hypryouctl change_workspace 10 || hyprctl dispatch 'hl.dsp.focus({ workspace = 10 })'"))
hl.bind("SUPER + 1", hl.dsp.exec_cmd("hypryouctl change_workspace 1 || hyprctl dispatch 'hl.dsp.focus({ workspace = 1 })'"))
hl.bind("SUPER + 2", hl.dsp.exec_cmd("hypryouctl change_workspace 2 || hyprctl dispatch 'hl.dsp.focus({ workspace = 2 })'"))
hl.bind("SUPER + 3", hl.dsp.exec_cmd("hypryouctl change_workspace 3 || hyprctl dispatch 'hl.dsp.focus({ workspace = 3 })'"))
hl.bind("SUPER + 4", hl.dsp.exec_cmd("hypryouctl change_workspace 4 || hyprctl dispatch 'hl.dsp.focus({ workspace = 4 })'"))
hl.bind("SUPER + 5", hl.dsp.exec_cmd("hypryouctl change_workspace 5 || hyprctl dispatch 'hl.dsp.focus({ workspace = 5 })'"))
hl.bind("SUPER + 6", hl.dsp.exec_cmd("hypryouctl change_workspace 6 || hyprctl dispatch 'hl.dsp.focus({ workspace = 6 })'"))
hl.bind("SUPER + 7", hl.dsp.exec_cmd("hypryouctl change_workspace 7 || hyprctl dispatch 'hl.dsp.focus({ workspace = 7 })'"))
hl.bind("SUPER + 8", hl.dsp.exec_cmd("hypryouctl change_workspace 8 || hyprctl dispatch 'hl.dsp.focus({ workspace = 8 })'"))
hl.bind("SUPER + 9", hl.dsp.exec_cmd("hypryouctl change_workspace 9 || hyprctl dispatch 'hl.dsp.focus({ workspace = 9 })'"))
hl.bind("SUPER + SHIFT + 0", hl.dsp.exec_cmd("hypryouctl move_window 10 || hyprctl dispatch 'hl.dsp.move({ workspace = 10, follow = true })'"))
hl.bind("SUPER + SHIFT + 1", hl.dsp.exec_cmd("hypryouctl move_window 1 || hyprctl dispatch 'hl.dsp.move({ workspace = 1, follow = true })'"))
hl.bind("SUPER + SHIFT + 2", hl.dsp.exec_cmd("hypryouctl move_window 2 || hyprctl dispatch 'hl.dsp.move({ workspace = 2, follow = true })'"))
hl.bind("SUPER + SHIFT + 3", hl.dsp.exec_cmd("hypryouctl move_window 3 || hyprctl dispatch 'hl.dsp.move({ workspace = 3, follow = true })'"))
hl.bind("SUPER + SHIFT + 4", hl.dsp.exec_cmd("hypryouctl move_window 4 || hyprctl dispatch 'hl.dsp.move({ workspace = 4, follow = true })'"))
hl.bind("SUPER + SHIFT + 5", hl.dsp.exec_cmd("hypryouctl move_window 5 || hyprctl dispatch 'hl.dsp.move({ workspace = 5, follow = true })'"))
hl.bind("SUPER + SHIFT + 6", hl.dsp.exec_cmd("hypryouctl move_window 6 || hyprctl dispatch 'hl.dsp.move({ workspace = 6, follow = true })'"))
hl.bind("SUPER + SHIFT + 7", hl.dsp.exec_cmd("hypryouctl move_window 7 || hyprctl dispatch 'hl.dsp.move({ workspace = 7, follow = true })'"))
hl.bind("SUPER + SHIFT + 8", hl.dsp.exec_cmd("hypryouctl move_window 8 || hyprctl dispatch 'hl.dsp.move({ workspace = 8, follow = true })'"))
hl.bind("SUPER + SHIFT + 9", hl.dsp.exec_cmd("hypryouctl move_window 9 || hyprctl dispatch 'hl.dsp.move({ workspace = 9, follow = true })'"))
hl.bind("SUPER + CTRL + 0", hl.dsp.exec_cmd("hypryouctl move_window_silent 10 || hyprctl dispatch 'hl.dsp.move({ workspace = 10, follow = false })'"))
hl.bind("SUPER + CTRL + 1", hl.dsp.exec_cmd("hypryouctl move_window_silent 1 || hyprctl dispatch 'hl.dsp.move({ workspace = 1, follow = false })'"))
hl.bind("SUPER + CTRL + 2", hl.dsp.exec_cmd("hypryouctl move_window_silent 2 || hyprctl dispatch 'hl.dsp.move({ workspace = 2, follow = false })'"))
hl.bind("SUPER + CTRL + 3", hl.dsp.exec_cmd("hypryouctl move_window_silent 3 || hyprctl dispatch 'hl.dsp.move({ workspace = 3, follow = false })'"))
hl.bind("SUPER + CTRL + 4", hl.dsp.exec_cmd("hypryouctl move_window_silent 4 || hyprctl dispatch 'hl.dsp.move({ workspace = 4, follow = false })'"))
hl.bind("SUPER + CTRL + 5", hl.dsp.exec_cmd("hypryouctl move_window_silent 5 || hyprctl dispatch 'hl.dsp.move({ workspace = 5, follow = false })'"))
hl.bind("SUPER + CTRL + 6", hl.dsp.exec_cmd("hypryouctl move_window_silent 6 || hyprctl dispatch 'hl.dsp.move({ workspace = 6, follow = false })'"))
hl.bind("SUPER + CTRL + 7", hl.dsp.exec_cmd("hypryouctl move_window_silent 7 || hyprctl dispatch 'hl.dsp.move({ workspace = 7, follow = false })'"))
hl.bind("SUPER + CTRL + 8", hl.dsp.exec_cmd("hypryouctl move_window_silent 8 || hyprctl dispatch 'hl.dsp.move({ workspace = 8, follow = false })'"))
hl.bind("SUPER + CTRL + 9", hl.dsp.exec_cmd("hypryouctl move_window_silent 9 || hyprctl dispatch 'hl.dsp.move({ workspace = 9, follow = false })'"))
hl.bind("SUPER + CTRL + down", hl.dsp.focus({ workspace = "empty" }))
hl.bind("SUPER + Q", hl.dsp.window.close({}))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({}))
hl.bind("SUPER + T", hl.dsp.window.float({}))
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))
hl.bind("SUPER + G", hl.dsp.group.toggle())
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("hypryouctl apps terminal"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("hypryouctl apps browser"))
hl.bind("SUPER + H", hl.dsp.exec_cmd("pamac-manager"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("gnome-system-monitor"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("hypryouctl apps files"))

-- -- generate_cursor_settings --
hl.env("XCURSOR_SIZE", 24)
hl.exec_cmd("hyprctl setcursor Bibata-Modern-Ice 24")

-- -- generate_noanim --
hl.layer_rule({
    match = { namespace = "hypryou-notifications.*" },
    no_anim = true
})

hl.layer_rule({
    match = { namespace = "hypryou-popups.*" },
    no_anim = true
})

hl.layer_rule({
    match = { namespace = "hypryou-wallpapers.*" },
    no_anim = true
})


-- -- generate_blur --
hl.layer_rule({
    match = { namespace = "hypryou-.*" },
    blur = true
})

hl.layer_rule({
    match = { namespace = "hypryou-.*" },
    xray = true
})

hl.layer_rule({
    match = { namespace = "hypryou-.*" },
    ignore_alpha = 0.85
})

-- -- generate_monitors --


-- -- generate_hl_config --
hl.config({
    decoration = {
        blur = {
            xray = true,
            size = 4,
            passes = 3,
            noise = 0.05,
            contrast = 1,
            vibrancy_darkness = 0.5,
            vibrancy = 0.3,
        },
        rounding = 16,
        rounding_power = 2.0,
        shadow = {
            range = 10,
            render_power = 5,
            color = "0x3f000000",
            offset = {0, 2},
            scale = 1.0,
        },
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,
    },
    input = {
        kb_model = "",
        kb_layout = "us",
        kb_variant = "",
        kb_rules = "",
        accel_profile = "",
        scroll_method = "",
        numlock_by_default = false,
        resolve_binds_by_sym = false,
        force_no_accel = false,
        left_handed = false,
        natural_scroll = false,
        mouse_refocus = true,
        repeat_rate = 25,
        repeat_delay = 600,
        sensitivity = 0.0,
        follow_mouse = 1,
        follow_mouse_threshold = 0.0,
        focus_on_close = 0,
        float_switch_override_focus = 1,
        kb_options = "",
    },
    general = {
        gaps_in = 5,
        gaps_out = 12,
        border_size = 0,
        layout = "dwindle",
        snap = {
            enabled = false,
        },
    },
    misc = {
        vrr = 0,
        middle_click_paste = true,
    },
})

