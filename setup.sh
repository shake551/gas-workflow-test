#!/bin/sh

# install package
npm init --y
npm install @google/clasp -g
npm install @types/google-apps-script --save-dev
npm install jest -g --save-dev
npm install ts-jest --save-dev
npm install @types/jest --save-dev

# clasp setting
clasp login

FILE=".clasp.json"

if [ ! -e $FILE ]; then
  read -p "script ID of GAS: " ID
  clasp clone $ID
fi

echo "---------------------------------------------"
echo "complete setting!!"
