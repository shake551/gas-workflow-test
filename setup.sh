#!/bin/sh

# install package
npm init --y
npm install @google/clasp -g
npm install @types/google-apps-script --save-dev
npm install --save-dev jest

# clasp setting
clasp login

FILE=".clasp.json"

if [ ! -e $FILE ]; then
  read -p "script ID of GAS: " ID
  clasp clone $ID
fi

echo "---------------------------------------------"
echo "complete setting!!"
