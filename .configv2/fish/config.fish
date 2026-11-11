function fish_greeting; end
set -g theme_display_user yes
set -g color_status_nonzero_str black
set -g color_status_nonzero_bg red
if status is-interactive
# Commands to run in interactive sessions can go here
end
if status is-interactive; and test "$TERM" = "linux"
    setfont latarcyrheb-sun16
end
