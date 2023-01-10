if status --is-login
	if test (tty) = "/dev/tty1"
		if test -z "{$XDG_RUNTIME_DIR}"
			export XDG_RUNTIME_DIR=/tmp/{$UID}
			if ! test -d "{$XDG_RUNTIME_DIR}"
				mkdir "{$XDG_RUNTIME_DIR}"
				chmod 0700 "{$XDG_RUNTIME_DIR}"
			end
		end

		dbus-run-session sway
	end
end

set -U fish_user_paths /usr/lib/ccache/bin /home/redson/.cargo/bin /home/redson/.fly/bin $(go env GOPATH)/bin /opt/node-v16.15.1-linux-x64/bin ~/.local/bin ~/.local/bin/lua-server/bin $fish_user_paths
set -U EDITOR nvim

# pnpm
set -gx PNPM_HOME "/home/redson/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
