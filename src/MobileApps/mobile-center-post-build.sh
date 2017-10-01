#!/usr/bin/env bash
if [ "$MOBILECENTER_BRANCH" == "master" ];
then
    msbuild /p:Configuration=Debug $MOBILECENTER_SOURCE_DIRECTORY/src/MobileApps/MyDriving/MyDriving.UITests/MyDriving.UITests.csproj
    mobile-center test run uitest \
                --app "GotoCPH-2017/MyDriving-for-iOS" \
                --devices "MonkeyFest-Singapore-2017/ios-smoketest-devices" \
                --app-path $MOBILECENTER_OUTPUT_DIRECTORY/MyDrivingiOS.ipa \
                --test-series "master" \
                --locale "en_US" \
                --build-dir $MOBILECENTER_SOURCE_DIRECTORY/src/MobileApps/MyDriving/MyDriving.UITests/bin/Debug/ \
                --token 557934aca03ab3096c444e38ba1bac0f3f95708a
else
    echo "Current branch is $MOBILECENTER_BRANCH"
fi
