# RxKakaoSDKLink

RxSwift를 사용하는 카카오링크 모듈입니다.

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
pod 'RxKakaoSDKLink'
pod 'RxKakaoSDKCommon'
```

## Import
```
import RxKakaoSDKLink
```

## Usage
[LinkApi](Extensions/Reactive.html) 클래스를 이용하여 각종 카카오링크 API를 호출할 수 있습니다.
```
LinkApi.shared.rx.defaultLink().subscribe()
LinkApi.shared.rx.scrapLink().subscribe()
LinkApi.shared.rx.customLink().subscribe()
```
