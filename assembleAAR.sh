#!/bin/bash
./gradlew clean
./gradlew :baselib:base:assembleDebug
./gradlew :baselib:baseparameter:assembleDebug
./gradlew :baselib:network:assembleDebug
./gradlew :baselib:networkscope:assembleDebug
./gradlew :baselib:tools:assembleDebug

target="/Users/liuzhuo/Desktop/workspace/WanAndroid-Kotlin/common/libs/"

basefolder="/Users/liuzhuo/Desktop/workspace/base-lib/baselib/base/build/outputs/aar/"
baseparameterfolder="/Users/liuzhuo/Desktop/workspace/base-lib/baselib/baseparameter/build/outputs/aar/"
networkfolder="/Users/liuzhuo/Desktop/workspace/base-lib/baselib/network/build/outputs/aar/"
networkscopefolder="/Users/liuzhuo/Desktop/workspace/base-lib/baselib/networkscope/build/outputs/aar/"
toolsfolder="/Users/liuzhuo/Desktop/workspace/base-lib/baselib/tools/build/outputs/aar/"

basename="base-debug.aar"
baseparametername="baseparameter-debug.aar"
networkname="network-debug.aar"
networkscopename="networkscope-debug.aar"
toolsname="tools-debug.aar"

if [ ! -d "$target" ]
then
    mkdir $target
fi

cp -f $basefolder$basename $target$basename
cp -f $baseparameterfolder$baseparametername $target$baseparametername
cp -f $networkfolder$networkname $target$networkname
cp -f $networkscopefolder$networkscopename $target$networkscopename
cp -f $toolsfolder$toolsname $target$toolsname

