# Guitar 🎸
### A Cross-Platform String and Regular Expression Library written in Swift.

[![Build Status](https://travis-ci.org/ArtSabintsev/Guitar.svg?branch=master)](https://travis-ci.org/ArtSabintsev/Guitar)

![Swift Support](https://img.shields.io/badge/Swift-4.2%2C%204.1%2C%203.2%203.1-orange.svg) [![Documentation](https://cdn.rawgit.com/ArtSabintsev/Guitar/master/docs/badge.svg)](http://sabintsev.com/Guitar/) [![Platform](https://img.shields.io/badge/Platforms-iOS%20%7c%20macOS%20%7c%20tvOS%20%7c%20watchOS%20%7c%20Linux%20-lightgray.svg?style=flat)](http://sabintsev/com/Guitar)

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)

## About
This library seeks to add common string manipulation functions, including common regular expression capabilities, that are needed in both mobile and server-side development, but are missing in Swift's Standard Library.

The full documentation can be found at http://www.sabintsev.com/Guitar/.

Guitar is also part of [Swift's Source Compatibility Suite](https://swift.org/source-compatibility/#current-list-of-projects).

## Features
- [x] Boolean Functions (`isAlpha`, `isNumeric`, `isUppercase`, etc.)
- [x] Case Functions (`camelCased`, `pascalCased`, `kebabCased`, etc.)
- [x] Latinization Functions (`.latinized()`, `.withoutAccents()`)
- [x] Padding Functions (`padLeft`, `padRight`, `pad`)
- [x] Regular Expressions (with Common Patterns Built-in)

### Sherlocked

A small set of functions offered by Guitar were removed in v0.3.0 of the library as Apple added many of these features to the Swift 4 language (aka, [Sherlocking](http://www.urbandictionary.com/define.php?term=sherlocked)). The functions that were removed were: `first, last, length, prefixed, suffixed, trimLeft, trimRight, truncated`. The `reversed` function was renamed to `reversedString` as it acts slightly differently than Swift's built-in `reversed` function.

## Installation Instructions

| Swift Version |  Branch Name  | Will Continue to Receive Updates?
| ------------- | ------------- |  -------------
| 4.2  | master   | **Yes**
| 4.1  | Swift4.1 | No
| 3.2  | swift3.2 | No
| 3.1  | swift3.1 | No

### CocoaPods
```ruby
pod 'Guitar' # Swift 4.2
pod 'Guitar', :git => 'https://github.com/ArtSabintsev/Guitar.git', :branch => 'swift4.1' # Swift 4.1
pod 'Guitar', :git => 'https://github.com/ArtSabintsev/Guitar.git', :branch => 'swift3.2' # Swift 3.2
pod 'Guitar', :git => 'https://github.com/ArtSabintsev/Guitar.git', :branch => 'swift3.1' # Swift 3.1
```

### Carthage
```swift
github "ArtSabintsev/Guitar" // Swift 4.2
github "ArtSabintsev/Guitar" "swift4.1" // Swift 4.1
github "ArtSabintsev/Guitar" "swift3.2" // Swift 3.2
github "ArtSabintsev/Guitar" "swift3.1" // Swift 3.1
```

### Swift Package Manager
```swift
.Package(url: "https://github.com/ArtSabintsev/Guitar.git", majorVersion: 0)
```

## Usage Examples

### Regular Expression
- `Guitar` makes it easier to use Regular Expressions to test and evaluate `String` objects.
- `Guitar.Chord` enumerates common regular expressions and they are located in _GuitarChord.swift_.
- _GuitarCommon.swift_ contains a list of convenience methods for common regular expression evaluations and tests, such as checking the string to determine if it's a valid email address.

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
