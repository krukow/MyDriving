#!/usr/bin/env bash
if [ "$APPCENTER_BRANCH" == "master" ];
then
    msbuild /p:Configuration=Debug $APPCENTER_SOURCE_DIRECTORY/src/MobileApps/MyDriving/MyDriving.UITests/MyDriving.UITests.csproj
    appcenter test run uitest \
                --app "GotoCPH-2017/MyDriving-for-iOS" \
                --devices "GotoCPH-2017/older-devices" \
                --app-path $APPCENTER_OUTPUT_DIRECTORY/MyDrivingiOS.ipa \
                --test-series "master" \
                --locale "en_US" \
                --build-dir $APPCENTER_SOURCE_DIRECTORY/src/MobileApps/MyDriving/MyDriving.UITests/bin/Debug/ \
                --token $APPCENTER_API_TOKEN
fi
