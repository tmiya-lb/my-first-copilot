#!/bin/bash

if [ -z $POSTFIX_TARGET ]; then
  echo 'Please set POSTFIX_TARGET'
  exit -1
fi

TAR_IMAGE=/var/tmp/debian-11.6-postfix.tar
docker image save debian-11.6-postfix > ${TAR_IMAGE}
gzip ${TAR_IMAGE}
scp ${TAR_IMAGE}.gz ${POSTFIX_TARGET}:/var/tmp/
rm ${TAR_IMAGE}.gz


