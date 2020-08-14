# j2objclibios
j2objc lib for iOS compiled from j2objclib 

## basic config
Read the [doc](https://developers.google.com/j2objc/)

## project config
1. The pom.xml defines all java dependencies and the iOS framework artifact info(The framework is also uploaded to maven repo). 'com.smoope.utils:j2objc-maven-plugin' is used to integrate j2objc with maven.
2. The prefixes.properties defines the package prefixes.
3. The Config.xcconfig defines environment variables.
4. The j2objclibios.podspec defines the iOS framework pod info.
5. The Project Run Scripts do the following things: Download all declared  java dependencies to javasrc dir; Convert java sources to objective-c sources to j2objclibios dir; Generate j2objclibios.h.
6. You must add the generated objective-c sources to iOS project manually. (It can be automated with [CocoaPods Xcodeproj](https://github.com/CocoaPods/Xcodeproj)).
7. When the framework is generated, it's uploaded to maven repo( and maybe cocoapods repo).
