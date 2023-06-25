this_dir=$(dirname $(realpath ${BASH_SOURCE:-$0}))

fzf-help-widget() {
    local option=$(echo $LBUFFER | $this_dir/fzf-select-option)
    LBUFFER="$LBUFFER$option"
    local ret=$?
    zle reset-prompt
    return $ret
}