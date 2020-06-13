// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "Guitar",
    platforms: [.iOS(.v9)],  
    products: [.library(name: "Guitar", targets: ["Guitar"])],
    targets: [ .target(name: "Guitar", path: "Sources/")],
    swiftLanguageVersions: [.v5]   
)
