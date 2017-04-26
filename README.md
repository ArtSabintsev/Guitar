# Guitar 🎸
### A Cross-Platform String and Regular Expression Library written in Swift.

[![BuddyBuild](https://dashboard.buddybuild.com/api/statusImage?appID=58b67d22d21c470100b0c394&branch=master&build=latest)](https://dashboard.buddybuild.com/apps/58b67d22d21c470100b0c394/build/latest?branch=master) [![Documentation](https://cdn.rawgit.com/ArtSabintsev/Guitar/master/docs/badge.svg)](http://sabintsev.com/Guitar/) [![Platform](https://img.shields.io/badge/Platforms-iOS%20%7c%20macOS%20%7c%20tvOS%20%7c%20watchOS%20%7c%20Linux%20-lightgray.svg?style=flat)](http://sabintsev/com/Guitar)

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)  [![CocoaPods](https://img.shields.io/cocoapods/dt/Guitar.svg)](https://cocoapods.org/pods/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dm/Guitar.svg)](https://cocoapods.org/pods/Guitar)

## About
This library seeks to add common string manipulation functions, including common regular expression capabilities, that are needed in both mobile and server-side development, but are missing in Swift's Standard Library.

The full documentation can be found at http://www.sabintsev.com/Guitar/.

Guitar is also part of [Swift's Source Compatibility Suite](https://swift.org/source-compatibility/#current-list-of-projects). 

## Features
- [x] Boolean Functions (`isAlpha`, `isNumeric`, `isUppercase`, etc.)
- [x] Case Functions (`camelCased`, `pascalCased`, `kebabCased`, etc.)
- [x] Character Functions (`first`, `length`, `reversed`, etc.)
- [x] Latinization Functions (`.latinized()`, `.withoutAccents()`)
- [x] Padding Functions (`padLeft`, `padRight`, `pad`)
- [x] Regular Expressions (with Common Patterns Built-in)
- [x] Trimming Functions (`trimLeft`, `trimRight`, `truncated`, etc.)

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

## Usage Examples

### Regular Expression
The `Guitar` structure itself is used to make it easier to use Regular Expressions to test and evaluate `String` objects. `Guitar.Chord` enumerates common regular expressions and they are located in _GuitarChord.swift_. Also, _GuitarCommon.swift_ contains a list of convenience methods for common regular expression evaluations and tests, such as checking the string to determine if it's a valid email address.

#### Initialization

```swift
Guitar(pattern: String) // A custom regular expression with which to initialize Guitar.

Guitar(chord: Guitar.Chord) // A common regular expression with which to initialize Guitar.
```

#### Methods

`evaluateForRanges(::)` returns an array of ranges, `[Range<String.Index>]`, that match a specific regular expression.
```swift
Guitar(chord: .firstCharacter).evaluateForRanges(from: "Hello world") // [Range(Swift.String.CharacterView.Index(_base: Swift.String.UnicodeScalarView.Index(_position: 0), _countUTF16: 1)..<Swift.String.CharacterView.Index(_base: Swift.String.UnicodeScalarView.Index(_position: 1), _countUTF16: 1)), Range(Swift.String.CharacterView.Index(_base: Swift.String.UnicodeScalarView.Index(_position: 6), _countUTF16: 1)..<Swift.String.CharacterView.Index(_base: Swift.String.UnicodeScalarView.Index(_position: 7), _countUTF16: 1))]
```

`evaluateForStrings(::)` returns an array of strings, `[String]`, that match a specific regular expression.
```swift
Guitar(chord: .firstCharacter).evaluateForStrings(from: "Hello world") // ["H", "w"]
```

`test(::)` evaluates a string with a specific regular expression. `true` is returned if matches are found in the string. Otherwise, `false` is returned.
```swift
Guitar(chord: .email).test(string: "hello@world.com") // `true`
```

### String Extension

This library also adds dozens of methods via `String` extensions that are missing in the Swift Standard Library or not easily accessible on the `String` class. Examples of each new method can be found in the [jazzy](https://github.com/realm/jazzy)-powered [documentation](http://sabintsev.com/Guitar/Extensions/String.html).

More specific examples can be found in the
[tests](https://github.com/ArtSabintsev/Guitar/tree/master/Tests/GuitarTests) folder.

## Inspiration
- [StringUtils](https://commons.apache.org/proper/commons-lang/apidocs/org/apache/commons/lang3/StringUtils.html)
- [Voca](https://vocajs.com/)

## Created and maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/)
