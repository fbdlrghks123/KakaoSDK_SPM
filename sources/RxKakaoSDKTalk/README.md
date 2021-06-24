# RxKakaoSDKTalk

RxSwift를 사용하는 카카오톡 API 모듈입니다. 로그인 기반 API이므로 RxKakaoSDKAuth 모듈을 이용한 로그인 과정이 필요합니다.

## Requirements
- Xcode 11.0
- iOS 11.0
- Swift 4.2
- CocoaPods 1.8.0

## Dependencies
- RxSwift ?
- RxCocoa ?
- RxAlamofire ?
- DynamicCodable ?

## Installation
```
pod 'RxKakaoSDKTalk'
pod 'RxKakaoSDKAuth'
pod 'RxKakaoSDKCommon'
```

## Import
```
import RxKakaoSDKStory
```

## Usage
[TalkApi](Extensions/Reactive.html) 클래스를 이용하여 각종 카카오톡 API를 호출할 수 있습니다.
```
TalkApi.shared.rx.profile().subscribe()
TalkApi.shared.rx.friends().subscribe()
```
