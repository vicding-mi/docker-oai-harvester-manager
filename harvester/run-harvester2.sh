#!/bin/bash

JAVA="java"
READLINK="readlink"

function ensureSlash(){
  length=${1}-1

  # If the parameter passed to the function does not end with a slash, append
  # one and return the result
  if [ "{$1:length}" != "/" ]; then
    echo ${1}/
  fi
}

export LANG=en_US.UTF-8

# Do not assume the script is invoked from the directory it is located in; get
# the directory the script is located in
thisDir="$(dirname "$(${READLINK} -f "$0")")"
#JAR=$thisDir/oai-harvest-manager-${versionNumber}.jar
JAR=`find /tmp/harvester_src/target -name "oai-harvest-manager*.jar"`

# Determine the logging mode
if [ "z${LOG_DIR}" != "z" ]; then
  LOG_DIR=$(ensureSlash $LOG_DIR)
else
  LOG_DIR=$thisDir
fi

PROPS="${PROPS} -Dlogdir=${LOG_DIR}"

nice ${JAVA} ${PROPS} -jar ${JAR} $*

# rm -rf /opt/oai-harvest-manager/overview.xml
