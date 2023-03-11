#! /bin/bash

function usage() {
    cat <<USAGE
    Usage: $0 [-c cet] [-g gmt] [-h help]

    Options:
        -c, --cet:		change to CET
        -g, --gmt:		change to GMT
        -h, --help:		get this message
USAGE
}

if [ $# -eq 0 ]; then
    usage
    exit 1
fi

case $1 in
    -c | --cet)
        timedatectl set-timezone Europe/Vienna
        ;;
    -g | --gmt)
        timedatectl set-timezone Europe/London
        ;;
    -h | --help)
        usage
        ;;
    *)
        usage
        exit 1
        ;;
esac

exit 0
