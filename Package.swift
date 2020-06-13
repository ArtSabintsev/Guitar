// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "Guitar",
    platforms: [.macOS(.v10_11), .iOS(.v10), tvOS(.v10), .watchOS(.v3)],  
    products: [.library(name: "Guitar", targets: ["Guitar"])],
    targets: [ .target(name: "Guitar", path: "Sources/")],
    swiftLanguageVersions: [.v5]   
)
