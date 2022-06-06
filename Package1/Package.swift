// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package1",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Package1",
            targets: ["Package1"]
        )
    ],
    targets: [
        .target(
            name: "Package1",
            dependencies: []
        )
    ]
)
