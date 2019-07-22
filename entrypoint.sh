#!/bin/bash

if [ ! -z $X_SECRET_FILE ]; then
    export SECRET=$(cat $X_SECRET_FILE)
fi

/run.sh
