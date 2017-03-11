# Guitar
### A Cross-Platform String and Regular Expression Library Written in Swift.

[![BuddyBuild](https://dashboard.buddybuild.com/api/statusImage?appID=58b67d22d21c470100b0c394&branch=master&build=latest)](https://dashboard.buddybuild.com/apps/58b67d22d21c470100b0c394/build/latest?branch=master) [![Documentation](https://cdn.rawgit.com/ArtSabintsev/Guitar/master/docs/badge.svg)](http://sabintsev.com/Guitar/) [![Platform](https://img.shields.io/cocoapods/p/Guitar.svg?style=flat)](http://cocoadocs.org/docsets/Guitar)

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)  [![CocoaPods](https://img.shields.io/cocoapods/dt/Guitarn.svg)](https://cocoapods.org/pods/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dm/Guitar.svg)](https://cocoapods.org/pods/Guitar)

## About
This library seeks to add common string manipulation functions, including common regular expression capabilities, that are needed in both mobile and server-side development, but are missing in Swift's Foundation library.

The full documentation can be found at http://www.sabintsev.com/Guitar/.

## Status
- **Release Stage**: Alpha
- **API Stability**: Unstable

## Features
- [x] Boolean Functions (`isAlpha`, `isNumeric`, `isUppercase`, etc.)
- [x] Case Functions (`camelCased`, `pascalCased`, `kebabCased`, etc.)
- [x] Character Functions (`first`, `length`, `reverse`, etc.)
- [ ] Latinization Functions
- [ ] HTML Manipulation Functions
- [x] Padding Functions (`padLeft`, `padRight`, `pad`)
- [ ] Performance Enhancements
- [x] Regular Expressions (with Common Patterns Built-in)
- [x] Trimming Functions (`trimLeft`, `trimRight`, `truncated`, etc.)

There's a lot more work in the pipeline, but community contributions are highly encouraged.

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

## Example
Guitar is currently in Alpha (until v0.1.0). During this stage, the API is unstable. Therefore, it does not make sense to retain examples in the README until the API has stabilized.

For the time being, check out the [tests](https://github.com/ArtSabintsev/Guitar/tree/master/GuitarExample/GuitarExampleTests) to see the various functions in the library in action.

## Inspiration
This project was inspired by:
- [StringUtils](https://commons.apache.org/proper/commons-lang/apidocs/org/apache/commons/lang3/StringUtils.html)
- [Voca](https://vocajs.com/)

## Created and maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/)
