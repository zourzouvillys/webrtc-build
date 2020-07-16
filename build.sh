#!/bin/sh

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git

export PATH=$(pwd)/depot_tools:$PATH

mkdir webrtc-checkout
cd webrtc-checkout

fetch --nohooks webrtc 

gclient sync

gn gen out/macos-x64 --args='target_os="macos" target_cpu="x64"'

gn ls out/macos-x64

ninja -C out/macos-x64 AppRTCMobile
