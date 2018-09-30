#!/bin/sh

usage()
{
	echo "Usage help"
}

verbose=""

while [ "$1" != "" ]; do
	case $1 in
			-d | --debug )          shift
															verbose="-$1"
															;;
			-h | --help )           usage
															exit
															;;
	esac
	shift
done

ansible-playbook $verbose -i inventory playbooks/node.yml
