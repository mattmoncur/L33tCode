xcodebuild \
-project L33tCode.xcodeproj \
-scheme L33tCode \
-sdk iphonesimulator \
-destination 'platform=iOS Simulator,OS=10.0,name=iPhone 6' \
clean build test
