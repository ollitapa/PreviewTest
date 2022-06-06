// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MainPackage",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MainPackage",
            targets: ["MainPackage"]
        )
    ],
    dependencies: [
        .package(path: "../Package1"),
        .package(path: "../Package2")
    ],
    targets: [
        .target(
            name: "MainPackage",
            dependencies: ["Package1", "Package2"]
        )
    ]
)
