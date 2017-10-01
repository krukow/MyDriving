#!/bin/bash
echo "Running tests on devices $2 from prepared dir $1"
mobile-center test run manifest --manifest-path $1/manifest.json --app-path MyDriving.Android/bin/XTC/com.microsoft.mydriving-Signed.apk --devices "$2" --test-series "master" --app "GotoCPH-2017/MyDriving-for-Android" --disable-telemetry
