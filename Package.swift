// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Guitar",
    products: [
        .library(name: "Guitar", targets: ["Guitar"]),
    ],
    targets: [
        .target(name: "Guitar", path: "Sources/"),
    ]   
)
