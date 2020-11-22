// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Guitar",
    platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4)],  
    products: [.library(name: "Guitar", targets: ["Guitar"])],
    targets: [ .target(name: "Guitar", path: "Sources/")],
    swiftLanguageVersions: [.v5]   
)
