if [[ $_ == $0 ]] && [[ "$1" != "--skip-source-check" ]]
then
    echo "export.sh has to be sourced, not run in a subshell"
    echo ". export.sh"
    exit 1
fi

PROJ_ROOT="$(dirname "$BASH_SOURCE")"

if [[ ! -f "${PROJ_ROOT}/esp-idf/export.sh" ]]
then
    echo "esp-idf is missing, please check out all needed submodules!"
    echo "git submodule update --init --recursive"
    return
fi

. ${PROJ_ROOT}/esp-idf/export.sh
