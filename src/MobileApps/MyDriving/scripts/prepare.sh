#!/bin/bash
mkdir -p $1
UITEST_VERSION="2.1.1"
echo "Preparing artifacts dir $1"
mono ../packages/Xamarin.UITest.$UITEST_VERSION/tools/test-cloud.exe prepare MyDriving.Android/bin/XTC/com.microsoft.mydriving-Signed.apk keystore MyDriving.Android/Build2016.keystore "Build*1234" Build2016 "Build*1234" --assembly-dir MyDriving.UITests/bin/XTC --artifacts-dir $1 --test-parameter "screencapture=true"
