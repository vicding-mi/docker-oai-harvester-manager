#!/bin/sh

/tmp/harvester_src/src/main/scripts/run-harvester2.sh /tmp/harvester_src/src/main/scripts/config.xml
ls -lah /var/harvester
tail -F /dev/null
