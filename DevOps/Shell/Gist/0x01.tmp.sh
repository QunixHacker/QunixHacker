#! /usr/bin/env bash

function internal_setup()
{
    # Trap exit for internal_cleanup function.
    trap 'internal_cleanup' EXIT

    ! type mktemp >/dev/null 2>&1 &&
        echo 'Command "mktemp" not found' >&2 && exit 1
    ! type rm >/dev/null 2>&1 &&
        echo 'Command "rm" not found' >&2 && exit 1

    umask 0077

    TMP_DIR="$(mktemp -d "/tmp/${0##*/}.XXXXXXXX" 2>/dev/null)"
    [ ! -d "${TMP_DIR}" ] &&
        echo 'Make temporary directory failed' >&2 && exit 1
}

function internal_cleanup()
{
    [ -d "${TMP_DIR}" ] && rm -rf "${TMP_DIR}"
}

internal_setup