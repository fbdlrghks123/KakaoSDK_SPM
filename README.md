# KakaoSDK_SPM

###### ![Swift](https://img.shields.io/badge/Version-2.5.3-bright%20green)![Swift](https://img.shields.io/badge/platform-iOS-orange)

##### KakaoSDK V2를 Swift Package Manager에서 사용하기 위한 목적으로 만든 Repository입니다.

##### 공식적으로 지원하기전까지 SDK버전 업때마다 꾸준히 버전업을 진행하려합니다.   



## Requirements

- iOS 11+ (소스코드에 UIKit만 존재하여 iOS만 지원하도록 처리함)
- Xcode 11+



## Installation

#### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/fbdlrghks123/KakaoSDK_SPM.git", .upToNextMajor(from: "2.5.3"))
]
```





## 원본 소스에서 수정한 내역

#### Import UIKit 추가 리스트

- KakaoSDKCommon/network/Api.swift 
- KakaoSDKAuth/auth/Auth.swift
- KakaoSDKUser/UserApi.swift
- KakaoSDKLink/LinkApi.swift

