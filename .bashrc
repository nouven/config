eval "$(starship init bash)"
[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
