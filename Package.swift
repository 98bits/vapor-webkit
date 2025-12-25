// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "vapor-webkit",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "VaporWebKit",
            targets: ["VaporWebKit"]
        ),
    ],
    dependencies: [
        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .package(url: "https://github.com/vapor/leaf.git", from: "4.3.0"),
    ],
    targets: [
        .target(
            name: "VaporWebKit",
            dependencies: [
                .product(name: "Leaf", package: "leaf"),
            ],
        ),
        .testTarget(
            name: "VaporWebKitTests",
            dependencies: ["VaporWebKit"]
        ),
    ]
)
