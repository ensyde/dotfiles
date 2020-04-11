source ~/.config/fish/aliases.fish

set fish_greeting


set -Ux EDITOR nvim
set -Ux BROWSER firefox


# Start X at login
# if status is-login
#	if test -z "$DISPLAY" -a $XDG_VTNR = 1
#		exec startx -- -keeptty
#	end
# end
