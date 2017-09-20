#!/usr/bin/env bash
# Example: Upload master branch app binary to HockeyApp using the API
if [ "$MOBILECENTER_BRANCH" == "master" ];
then
    msbuild /p:Configuration=Debug src/MobileApps/MyDriving/MyDriving.UITests/MyDriving.UITests.csproj
    # mobile-center test run uitest \
    #             --app "MonkeyFest-Singapore-2017/MyDriving" \
    #             --devices "MonkeyFest-Singapore-2017/ios-smoketest-devices" \
    #             --app-path $MOBILECENTER_OUTPUT_DIRECTORY/MyApps.ipa \
    #             --test-series "master" \
    #             --locale "en_US" \
    #             --build-dir src/MobileApps/MyDriving/MyDriving.UITests/bin/Debug/
else
    echo "Current branch is $MOBILECENTER_BRANCH"
fi
