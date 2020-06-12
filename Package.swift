// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Guitar",
    products: [
        .library(name: "Guitar", targets: ["Guitar"]),
    ],
    targets: [
        .target(name: "Guitar", path: "Sources/"),
    ],
    platforms: [.iOS(.v8)],  
    swiftLanguageVersions: [.v5]   
)
