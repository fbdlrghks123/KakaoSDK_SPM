// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoOpenSDK_v2",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "KakaoSDKAuth",
                 targets: ["KakaoSDKAuth"]),
        
        .library(name: "KakaoSDKCommon",
                 targets: ["KakaoSDKCommon"]),
        
        .library(name: "KakaoSDKLink",
                 targets: ["KakaoSDKLink"]),
        
        .library(name: "KakaoSDKNavi",
                 targets: ["KakaoSDKNavi"]),
        
        .library(name: "KakaoSDKStory",
                 targets: ["KakaoSDKStory"]),
        
        .library(name: "KakaoSDKTalk",
                 targets: ["KakaoSDKTalk"]),
        
        .library(name: "KakaoSDKTemplate",
                 targets: ["KakaoSDKTemplate"]),
        
        .library(name: "KakaoSDKUser",
                 targets: ["KakaoSDKUser"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(name: "KakaoSDKAuth",
                dependencies: ["KakaoSDKCommon"],
                path: "sources/KakaoSDKAuth"),
        
        .target(name: "KakaoSDKCommon",
                dependencies: ["Alamofire"],
                path: "sources/KakaoSDKCommon"),
        
        .target(name: "KakaoSDKLink",
                dependencies: ["KakaoSDKCommon"],
                path: "sources/KakaoSDKLink"),
        
        .target(name: "KakaoSDKNavi",
                dependencies: ["KakaoSDKCommon"],
                path: "sources/KakaoSDKNavi"),
        
        .target(name: "KakaoSDKStory",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth"],
                path: "sources/KakaoSDKStory"),
        
        .target(name: "KakaoSDKTalk",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "KakaoSDKTemplate"],
                path: "sources/KakaoSDKTalk"),
        
        .target(name: "KakaoSDKTemplate",
                dependencies: ["KakaoSDKCommon"],
                path: "sources/KakaoSDKTemplate"),
        
        .target(name: "KakaoSDKUser",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth"],
                path: "sources/KakaoSDKUser")
    ]
)
