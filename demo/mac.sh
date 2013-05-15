#! /bin/bash

TARGET=$1
SOURCE=$2

CMD="gcc  -o ${TARGET} ${SOURCE} -I /usr/include/GNUstep -L /usr/lib/GNUstep  -lgnustep-base"
${CMD}
