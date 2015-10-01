ndk-build

NAME=fuzz_zone

adb push libs/armeabi/$NAME /data/local/tmp/ && \
adb shell chmod 755 /data/local/tmp/$NAME && \
adb shell su -c "/data/local/tmp/$NAME $1"
