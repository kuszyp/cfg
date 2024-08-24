# Custom aliases
# --------------
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# lazygit alias (used in lazyvim)
alias lg='lazygit'

# pnpm alias
alias pn=pnpm

# other aliases
alias config='/usr/bin/git --git-dir=/home/kuszyp/.cfg/ --work-tree=/home/kuszyp'
