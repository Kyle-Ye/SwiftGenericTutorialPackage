// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Demo",
    products: [
        .library(name: "TestKit", targets: ["TestKit"]),
    ],
    targets: [
        .target(name: "TestKit"),
    ]
)
