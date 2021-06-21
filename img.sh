#! /bin/bash

TARGET=$1
IMAGE=$2

for FILEPATH in $TARGET/*; do
    if [ "${FILEPATH: -4}" == "${IMAGE: -4}" ]
                then
      rsync -c $IMAGE $FILEPATH
                fi
done

