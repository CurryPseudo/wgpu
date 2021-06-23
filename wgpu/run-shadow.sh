#! /bin/bash

git pull
cargo bundle --example shadow --target x86_64-apple-ios
xcrun simctl install booted ../target/x86_64-apple-ios/debug/examples/bundle/ios/shadow.app
xcrun simctl launch --console booted com.wgpu.shadow