function getrealpath() {
    [[ ! -d "$1" ]] && return 1 # failure : file does not exist.
    [[ -n "$no_symlinks" ]] && local pwdp='pwd -P' || local pwdp='pwd' # do symlinks.
    echo "$( cd "$( echo "${1%/*}" )" 2>/dev/null; $pwdp )"/"${1##*/}" # echo result.
    return 0 # success
}

if [[ "$HOSTOS" == "Darwin" ]]; then
    launchctl setenv getrealpath getrealpath
else
    export -f getrealpath
fi
