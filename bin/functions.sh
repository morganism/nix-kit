#!/bin/bash
#
set -e

binlink() {
	FILES2LINK=${1:?"The binlink() function expects a list of filenames in the CWD to link to '${HOME}/bin'"}
	cd ${HOME}/bin
	for s in $(echo "${FILES2LINK}")
	do
		ln -s ${THISDIR}/bin/${s} .
		echo "linked ${s}"
		echo "rm ${HOME}/bin/${s}" >> undo
	done
	chmod 755 undo

	cd ${THISDIR}
}
