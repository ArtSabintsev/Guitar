# Guitar
### A Cross-Platform String Library Written in Swift.

[![Build Status](https://travis-ci.org/ArtSabintsev/Guitar.svg?branch=master)](https://travis-ci.org/ArtSabintsev/Guitar) [![Platform](https://img.shields.io/cocoapods/p/Alamofire.svg?style=flat)](http://cocoadocs.org/docsets/Guitar) [![Documentation](https://cdn.rawgit.com/ArtSabintsev/Guitar/master/docs/badge.svg)](http://sabintsev.com/Guitar/)

[![CocoaPods](https://img.shields.io/cocoapods/v/Guitar.svg)](https://cocoapods.org/pods/Guitar)  [![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)  [![CocoaPods](https://img.shields.io/cocoapods/dt/Guitarn.svg)](https://cocoapods.org/pods/Guitar) [![CocoaPods](https://img.shields.io/cocoapods/dm/Guitar.svg)](https://cocoapods.org/pods/Guitar)

## About
This library seeks to add common string manipulation functions that are needed in both mobile and server-side development, but are missing in Swift's Foundation library.

The full documentation can be found at http://www.sabintsev.com/Guitar/.

## Project Status

- **Release Stage**: Alpha (until v0.1.0)
- **Development Status**: Active Development (as of March 1, 2017)
- **Contributions are highly encouraged.**

## Roadmap
### Functions
- [x] Boolean Functions (`isAlpha`, `isNumeric`, `isUppercase`, etc.)
- [x] Case Functions (`camelCased`, `pascalCased`, `kebabCased`, etc.)
- [x] Character Functions (`first`, `length`, `reverse`, etc.)
- [ ] Latinization Functions
- [ ] HTML Manipulation Functions
- [x] Padding Functions (`padLeft`, `padRight`, `pad`)
- [ ] Regular Expressions / Regex (Pure Swift Implementation)
- [x] Trimming Functions (`trimLeft`, `trimRight`, `prefixed`, etc.)

### Documentation
- [x] Inline Function Documentation
- [x] Jazzy Function Documentation (http://sabintsev.com/Guitar)
- [x] README Function Documentation

### Dependency Management
- [x] Carthage Support
- [x] CocoaPods Support
- [x] Swift Package Manager

### Testing
- [x] Continuous Integration with Buddy Build
- [x] SwiftLint Integration
- [x] Unit Tests

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

### Boolean Operations

#### isAlpha()
```swift
let string = "HelloWorld"
string.isAlpha() // True

let string = "Hell0World"
string.isAlpha() // False
```

#### isAlphanumeric()
```swift
let string = "HelloWorld"
string.isAlphanumeric() // True

let string = "Hell0World"
string.isAlphanumeric() // True

let string = "Hell0 World"
string.isAlphanumeric() // False
```

#### isCapitalized()
```swift
let string = "Hello World"
string.isCapitalized() // True

let string = "hello World"
string.isCapitalized() // False

let string = "Hello-World"
string.isCapitalized() // True
```

#### isDecapitalized()
```swift
let string = "hello World"
string.isDecapitalized() // True

let string = "Hello World"
string.isDecapitalized() // False

let string = "hello-World"
string.isDecapitalized() // True
```

#### isLowercased()
```swift
// Note, Swift treats non-alphabetical characters as Uppercased.

let string = "helloworld"
string.isLowercased() // True

let string = "hello world"
string.isLowercased() // False

let string = "hello-world"
string.isLowercased() // False
```

#### isNumeric()
```swift
let string = "73110"
string.isNumeric() // True

let string = "73110 1337"
string.isNumeric() // False

let string = "73110World"
string.isNumeric() // False
```

#### isUpppercased()
```swift

// Note, Swift treats non-alphabetical characters as Uppercased.

let string = "HELLOWORLD"
string.isUpppercased() // True

let string = "HELLO WORLD"
string.isUpppercased() // True

let string = "HELLO-W0RLD"
string.isUpppercased() // True

let string = "HeLLoW0RLD"
string.isUpppercased() // False
```

### Case Operations

#### camelCased()
```swift
let string = "Hello World"
string.camelCased() // "helloWorld"

let string = "hello_world"
string.camelCased() // "helloWorld"
```

#### decapitalized()
```swift
// Implementation is currently broken.
```

#### kebabCased()
```swift
let string = "Hello World"
string.kebabCased() // "-Hello-World-"

let string = "hello_world"
string.kebabCased() // "-hello-world-"
```

#### pascalCased()
```swift
let string = "Hello World"
string.pascalCased() // "HelloWorld"

let string = "hello_world"
string.pascalCased() // "HelloWorld"
```

#### slugCased()
```swift
let string = "Hello World"
string.slugCased() // "Hello-World"
```

#### snakeCased()
```swift
let string = "Hello World"
string.snakeCased() // "Hello_World"
```
#### swapCased()
```swift
let string = "Hello World"
string.swapCased() // "hELLO wORLD"
```

### Character Operations

#### first()
```swift
let string = "Hello World"
string.first() // "H"
```

#### last()
```swift
let string = "Hello World"
string.last() // "d"
```

#### length()
```swift
let string = "Hello World"
string.length() // "11"
```

#### reversed()
```swift
let string = "Hello World"
string.reversed() // "dlroW olleH"
```

### Padding Operations

#### padLeft()
```swift
let string = "Hello World" // 11 Characters
string.padLeft(length: 15) // "    Hello World"

let string = "Hello World" // 11 Characters
string.padLeft(length: 15, withToken: "*") // "****Hello World"

let string = "Hello World" // 11 Characters
string.padLeft(length: 5) // Returns the original string, "Hello World"
```

#### padRight()
```swift
let string = "Hello World" // 11 Characters
string.padRight(length: 15) // "Hello World    "

let string = "Hello World" // 11 Characters
string.padRight(length: 15, withToken: "*") // "Hello World****"

let string = "Hello World" // 11 Characters
string.padRight(length: 5) // Returns the original string, "Hello World"
```

#### pad()
```swift
let string = "Hello World" // 11 Characters
string.pad(length: 15) // "  Hello World  "

let string = "Hello World" // 11 Characters
string.pad(length: 5) // Returns the original string, "Hello World"

let string = "Hello World" // 11 Characters
string.pad(length: 15, withToken: "*") // "**Hello World**"

/* Note: If the difference between the final length
 and number of characters in the original string is odd,
 the string is padded extra on the right side.
 */
let string = "Hello World" // 11 Characters
string.pad(length: 16) // "  Hello World   "

let string = "Hello World" // 11 Characters
string.pad(length: 16) // "**Hello World***"
```

### Trimming Operations

#### prefixed()
```swift
let string = "Hello World"
string.prefixed(length: 7) // "Hello W"
```

#### suffixed()
```swift
let string = "Hello World"
string.suffixed(length: 7) // "o World"
```

#### trimLeft()
```swift
let string = "Hello World"
string.trimLeft(length: 7) // "orld"
```

#### trimRight()
```swift
let string = "Hello World"
string.trimRight(length: 7) // "Hell"
```

#### truncated()
```swift
let string = "Hello World"
string.truncated(length: 7) // "Hell..." (Appends an ellipsis, ..., to the end of the string.)
```

## Inspiration
This project was inspired by [Voca](https://vocajs.com/).

## Created and maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/)
