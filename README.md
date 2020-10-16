# PaintAndBrush

A package with some simple -- but useful -- helpers for building UIKit views in code.

## Installation
PaintAndBrush is available through [CocoaPods](https://cocoapods.org/) and [Swift Package Manager](https://swift.org/package-manager/)
### Cocoa Pods
Cocoa Pods is a dependency manager for Objective-C and Swift Cocoa projects. 

To integrate and use PaintAndBrush into your Xcode project, add the pod to your Podfile:
```ruby
pod 'PaintAndBrush', '0.1.4'
```
And then run:
```ruby
pod install
```
After that, to use PaintAndBrush into your project, import PaintAndBrush with:
```swift
import PaintAndBrush
```
### Swift Package Manager(Xcode 11+)
The Swift Package Manager is a tool for automating and managing the distribution of 3rd-party Swift code. Starting on Xcode 11, SPM is natively integrated with Xcode.

To integrate PaintAndBrush into your project using SPM open your project using Xcode 11+. Then click on `File` -> `Swift Packages` -> `Add Package Dependency` and enter the PaintAndBrush repository's URL (https://github.com/mugbug/PaintAndBrush).

To use PaintAndBrush into your project, import PaintAndBrush with:
```swift
import ViewCodeHelper
```

Or Add the following to your Package.swift file:
```
dependencies: [
    .package(
        url: "https://github.com/mugbug/PaintAndBrush.git", 
        from: "0.1.4"
    ),
]
```
