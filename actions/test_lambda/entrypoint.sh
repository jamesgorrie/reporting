#!/bin/sh
set -eu

LAMBDA_NAME=$1
LAMBDA_DIR="./lambdas/$LAMBDA_NAME/src"

cd $LAMBDA_DIR
  if test -f "./requirements.txt"; then
    pip3 install -r requirements.txt
  fi

  pytest .
  echo "Finished testing $LAMBDA_NAME"
cd ../../../
