if [[ -z $commands[thefuck] ]]; then
    echo "thefuck is not installed"
    return 1
fi

invoke-fuck() {
    local LOGDIR=$(mktemp -t thefuck-log-XXXXXX -d)
    export THEFUCK_INSTANT_MODE=True
    export THEFUCK_OUTPUT_LOG=$LOGDIR
    thefuck --shell-logger $LOGDIR
    rm -f $LOGDIR
    exit
}
zle -N invoke-fuck
