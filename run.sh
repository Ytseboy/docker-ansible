#!/usr/bin/env sh

case ${CMD} in
    adhoc)
	ansible "$@"
	;;
    playbook)
	ansible-playbook "$@"
	;;
esac

