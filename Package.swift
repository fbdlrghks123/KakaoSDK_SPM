// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KakaoOpenSDK_V2",
    platforms: [
        .iOS(.v11)
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
                dependencies: ["KakaoSDKCommon", "Alamofire"],
                path: "sources/KakaoSDKAuth"),
        
        .target(name: "KakaoSDKCommon",
                dependencies: ["Alamofire"],
                path: "sources/KakaoSDKCommon"),
        
        .target(name: "KakaoSDKLink",
                dependencies: ["KakaoSDKCommon", "KakaoSDKTemplate", "Alamofire"],
                path: "sources/KakaoSDKLink"),
        
        .target(name: "KakaoSDKNavi",
                dependencies: ["KakaoSDKCommon", "Alamofire"],
                path: "sources/KakaoSDKNavi"),
        
        .target(name: "KakaoSDKStory",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "Alamofire"],
                path: "sources/KakaoSDKStory"),
        
        .target(name: "KakaoSDKTalk",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "KakaoSDKTemplate", "Alamofire"],
                path: "sources/KakaoSDKTalk"),
        
        .target(name: "KakaoSDKTemplate",
                dependencies: ["KakaoSDKCommon", "Alamofire"],
                path: "sources/KakaoSDKTemplate"),
        
        .target(name: "KakaoSDKUser",
                dependencies: ["KakaoSDKCommon", "KakaoSDKAuth", "Alamofire"],
                path: "sources/KakaoSDKUser")
    ]
)
