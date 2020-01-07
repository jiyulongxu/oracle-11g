#!/usr/bin/env bash

set -e
source /assets/colorecho

if [ ! -d "/opt/oracle/app/product/11.2.0/dbhome_1" ]; then
  mkdir -p -m 755 /opt/oracle/app
	mkdir -p -m 755 /opt/oracle/oraInventory
	mkdir -p -m 755 /opt/oracle/dpdump
	chown -R oracle:oinstall /opt/oracle
	echo_yellow "Database is not installed. Installing..."
	/assets/install.sh
fi

su oracle -c "/assets/entrypoint_oracle.sh"

