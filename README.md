# Guitar
### A Cross-Platform String Library Written in Swift.

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/) [![Platform](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)](http://cocoadocs.org/docsets/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dt/Guitarn.svg)](https://cocoapods.org/pods/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dm/Guitar.svg)](https://cocoapods.org/pods/Guitar)

## Project Status

- **Release**: Alpha (until v0.1.0)
- **Status**: Active Development (as of March 1, 2017)
- **Contributions are highly encouraged.**

## Roadmap
### Functions
- [x] Boolean Functions (`isAlpha`, `isNumeric`, `isUppercase`, etc.)
- [x] Case Functions (`camelCased`, `pascalCased`, `kebabCased`, etc.)
- [x] Character Functions (`first`, `length`, `reverse`, etc.)
- [ ] HTML Manipulation Functions
- [x] Padding Functions (`padLeft`, `padRight`, `pad`)
- [ ] Regular Expressions / Regex (Pure Swift Implementation)
- [x] Trimming Functions (`trimLeft`, `trimRight`, `prefixed`, etc.)

### Documentation
- [x] Inline Function Documentation
- [x] Jazzy Documentation (http://sabintsev.com/Guitar)
- [ ] README Documentation

### Dependency Management
- [x] Carthage Support
- [x] CocoaPods Support
- [x] Swift Package Manager

### Testing
- [x] Continuous Integration with Buddy Build
- [ ] Performance Tests
- [x] SwiftLint Integration
- [x] Unit Tests

### Sample Apps
- [x] iOS
- [x] macOS
- [x] tvOS
- [x] watchOS
- [ ] Server Side

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
.Package(url: "https://github.com/ArtSabintsev/Guitar.git")
```

## Implemented Functions

The full documentation can be found at http://www.sabintsev.com/Guitar/.

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
  - slugCased()
  - snakeCased()
  - swapCased()
- **Character Operations**
 - first()
 - last()
 - length()
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
 - truncated()

## Inspiration
This project was inspired by [Voca](https://vocajs.com/).

## Created and maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/)
