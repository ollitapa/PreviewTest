// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package2",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Package2",
            targets: ["Package2"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Package2",
            dependencies: []
        )
    ]
)
