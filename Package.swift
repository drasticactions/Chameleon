// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chameleon",
    products: [
        .library(
            name: "Chameleon",
            targets: ["Chameleon"]),
        .library(
            name: "ChameleonSwift",
            targets: ["ChameleonSwift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Chameleon",
            path:"Pod/Classes/Objective-C"
        ),
        .target(
            name: "ChameleonSwift",
            dependencies: ["Chameleon"],
            path:"Pod/Classes/Swift"
        )
    ]
)
