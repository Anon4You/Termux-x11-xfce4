# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
termux-x11 :1 -xstartup "dbus-launch --exit-with-session xfce4-session" > /dev/null 2>&1 &
# Default command line prompt.
PROMPT_DIRTRIM=2
#PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '
PS1='┌─(\[\e[32;1m\]Termux-x11\[\e[0m\])-[\[\e[30;1m\]\w\[\e[0m\]]\n└─\[\e[34;1m\]\$\[\e[0m\] '
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
