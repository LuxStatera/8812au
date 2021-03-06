#!/bin/bash
#
OPTIONS_FILE=8812au.conf
SCRIPT_NAME=edit-options.sh
#
# Purpose: Make it easier to edit the driver options file.
#
# To make this file executable:
#
# $ chmod +x edit-options.sh
#
# To execute this file:
#
# $ sudo ./edit-options.sh
#
if [ $EUID -ne 0 ]
then
	echo "You must run ${SCRIPT_NAME} with superuser priviliges."
	echo "Try: \"sudo ./${SCRIPT_NAME}\""
	exit 1
fi

nano /etc/modprobe.d/${OPTIONS_FILE}
