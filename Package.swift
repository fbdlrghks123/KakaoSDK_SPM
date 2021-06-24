// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

enum KakaoTarget: String {
    case auth = "KakaoSDKAuth"
    case common = "KakaoSDKCommon"
    case link = "KakaoSDKLink"
    case navi = "KakaoSDKNavi"
    case story = "KakaoSDKStory"
    case talk = "KakaoSDKTalk"
    case templet = "KakaoSDKTemplate"
    case user = "KakaoSDKUser"
    
    case authRx = "RxKakaoSDKAuth"
    case commonRx = "RxKakaoSDKCommon"
    case linkRx = "RxKakaoSDKLink"
    case naviRx = "RxKakaoSDKNavi"
    case storyRx = "RxKakaoSDKStory"
    case talkRx = "RxKakaoSDKTalk"
    case templetRx = "RxKakaoSDKTemplate"
    case userRx = "RxKakaoSDKUser"
}

extension Product {
    static func library(name: KakaoTarget) -> PackageDescription.Product {
        return .library(name: name.rawValue, targets: [name.rawValue])
    }
}


let package = Package(
    name: "KakaoOpenSDK_V2",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: .auth),
        .library(name: .common),
        .library(name: .link),
        .library(name: .navi),
        .library(name: .story),
        .library(name: .talk),
        .library(name: .templet),
        .library(name: .user),
        
        .library(name: .authRx),
        .library(name: .commonRx),
        .library(name: .linkRx),
        .library(name: .storyRx),
        .library(name: .talkRx),
        .library(name: .userRx)
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxAlamofire.git", .upToNextMajor(from: "5.7.0"))
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
                path: "sources/KakaoSDKUser"),
        
        
        // MARK: RX
        .target(name: "RxKakaoSDKAuth",
                dependencies: ["KakaoSDKAuth", "RxKakaoSDKCommon"],
                path: "sources/RxKakaoSDKAuth"),
        
        .target(name: "RxKakaoSDKCommon",
                dependencies: ["RxAlamofire", "RxSwift", .product(name: "RxCocoa", package: "RxSwift")],
                path: "sources/RxKakaoSDKCommon"),
        
        .target(name: "RxKakaoSDKLink",
                dependencies: ["KakaoSDKLink", "RxKakaoSDKCommon"],
                path: "sources/RxKakaoSDKLink"),
        
        .target(name: "RxKakaoSDKStory",
                dependencies: ["KakaoSDKStory", "RxKakaoSDKUser"],
                path: "sources/RxKakaoSDKStory"),
        
        .target(name: "RxKakaoSDKTalk",
                dependencies: ["KakaoSDKTalk", "KakaoSDKTemplate", "RxKakaoSDKUser"],
                path: "sources/RxKakaoSDKTalk"),
        
        .target(name: "RxKakaoSDKUser",
                dependencies: ["KakaoSDKUser", "RxKakaoSDKAuth"],
                path: "sources/RxKakaoSDKUser"),
    ]
)
