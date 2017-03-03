# Guitar
### A Cross-Platform String Library Written in Swift.

[![BuddyBuild](https://dashboard.buddybuild.com/api/statusImage?appID=58b67d22d21c470100b0c394&branch=master&build=latest)](https://dashboard.buddybuild.com/apps/58b67d22d21c470100b0c394/build/latest?branch=master) [![Platform](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)](http://cocoadocs.org/docsets/Guitar) [![Documentation](https://cdn.rawgit.com/ArtSabintsev/Guitar/master/docs/badge.svg)](http://sabintsev.com/Guitar/)

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)  [![CocoaPods](https://img.shields.io/cocoapods/dt/Guitarn.svg)](https://cocoapods.org/pods/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dm/Guitar.svg)](https://cocoapods.org/pods/Guitar)

## About
This library seeks to add common string manipulation functions that are needed in both mobile and server-side development, but are missing in Swift's Foundation library.

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

### Boolean Operations

#### isAlpha()
```swift
let string = "HelloWorld"
string.isAlpha() // returns True

let string = "Hell0World"
string.isAlpha() // returns False
```

#### isAlphanumeric()
```swift
let string = "HelloWorld"
string.isAlphanumeric() // returns True

let string = "Hell0World"
string.isAlphanumeric() // returns True

let string = "Hell0 World"
string.isAlphanumeric() // returns False
```

#### isCapitalized()
```swift
let string = "Hello World"
string.isCapitalized() // returns True

let string = "hello World"
string.isCapitalized() // returns False

let string = "Hello-World"
string.isCapitalized() // returns True
```

#### isDecapitalized()
```swift
let string = "hello World"
string.isDecapitalized() // returns True

let string = "Hello World"
string.isDecapitalized() // returns False

let string = "hello-World"
string.isDecapitalized() // returns True
```

#### isLowercased()
```swift
// Note, Swift treats non-alphabetical characters as Uppercased.

let string = "helloworld"
string.isLowercased() // returns True

let string = "hello world"
string.isLowercased() // returns False

let string = "hello-world"
string.isLowercased() // returns False
```

#### isNumeric()
```swift
let string = "73110"
string.isNumeric() // returns True

let string = "73110 1337"
string.isNumeric() // returns False

let string = "73110World"
string.isNumeric() // returns False
```

#### isUpppercased()
```swift

// Note, Swift treats non-alphabetical characters as Uppercased.

let string = "HELLOWORLD"
string.isUpppercased() // returns True

let string = "HELLO WORLD"
string.isUpppercased() // returns True

let string = "HELLO-W0RLD"
string.isUpppercased() // returns True

let string = "HeLLoW0RLD"
string.isUpppercased() // returns False

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
