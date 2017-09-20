#!/usr/bin/env bash
if [ "$MOBILECENTER_BRANCH" == "master" ];
then
    msbuild /p:Configuration=Debug $MOBILECENTER_SOURCE_DIRECTORY/src/MobileApps/MyDriving/MyDriving.UITests/MyDriving.UITests.csproj
    # mobile-center test run uitest \
    #             --app "MonkeyFest-Singapore-2017/MyDriving" \
    #             --devices "MonkeyFest-Singapore-2017/ios-smoketest-devices" \
    #             --app-path $MOBILECENTER_OUTPUT_DIRECTORY/MyApps.ipa \
    #             --test-series "master" \
    #             --locale "en_US" \
    #             --build-dir $MOBILECENTER_SOURCE_DIRECTORY/src/MobileApps/MyDriving/MyDriving.UITests/bin/Debug/
else
    echo "Current branch is $MOBILECENTER_BRANCH"
fi
