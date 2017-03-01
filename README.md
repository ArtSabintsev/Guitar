# Guitar
### A Cross-Platform String Library Written in Swift.

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/) [![Platform](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)](http://cocoadocs.org/docsets/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dt/Guitarn.svg)](https://cocoapods.org/pods/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dm/Guitar.svg)](https://cocoapods.org/pods/Guitar)

## Project Status

This project is currently a work in progress. Contributions by the community are highly encouraged.

### Roadmap to 1.0.0 (Alphabetical Order)
- [x] Carthage Support
- [x] CocoaPods Support
- [ ] Continuous Integration
- [x] Function Documentation
- [ ] HTML String Manipulation Support
- [ ] Jazzy Docs
- [ ] Performance Tests
- [ ] Regex Support (Pure Swift Implementation)
- [ ] Swift Package Manager
- [ ] SwiftLint Integration
- [ ] Unit Tests

### Installation

## Installation Instructions

### CocoaPods
```ruby
pod 'Guitar'
```

### Carthage
``` swift
github "ArtSabintsev/Guitar"
```

### Swift Package Manager
```swift
.Package(url: "https://github.com/ArtSabintsev/Guitar.git", majorVersion: 0)
```

## Implemented Functionality
- **Boolean Operations**
  - isAlpha()
  - isAlphanumeric()
  - isCapitalized()
  - isDecapitalized()
  - isLowercased()
  - isNumeric()
  - isUppercased()
- **Case Operations**
  - camelCased()
  - decapitalized()
  - kebabCased()
  - pascalCased()
  - slug()
  - snakeCased()
  - swapCased()
- **Character Operations**
 - first()
 - last()
 - reverse()
- **Padding Operations**
 - pad()
 - padLeft()
 - padRight()
- **Trimming Operations**
 - prefixed()
 - suffixed()
 - trimLeft()
 - trimRight()
 - truncate()

## Inspiration
This project was inspired by [Voca](https://vocajs.com/).

## Created and maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/)
