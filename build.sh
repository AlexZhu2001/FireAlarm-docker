#!/bin/sh

pushd ./FireAlarm-front
npm install
npm run build
popd
mkdir -pv ./FireAlarm-server/static/
mv ./FireAlarm-front/dist/* ./FireAlarm-server/static/