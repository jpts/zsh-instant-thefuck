#!/usr/bin/env zsh

if [[ -z $commands[thefuck] ]]; then
    echo "thefuck is not installed"
    return 1
fi

init-fuck() {
    local LOGDIR=$(mktemp -t thefuck-log-XXXXXX)
    export THEFUCK_INSTANT_MODE=True
    export THEFUCK_OUTPUT_LOG=$LOGDIR
    thefuck --shell-logger $LOGDIR
    rm -f $LOGDIR
}

init-fuck()

zle -N init-fuck
