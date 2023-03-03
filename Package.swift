// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Chameleon",
    platforms: [.ios(.v16)],
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
            path:"[PackageRoot]/Pod/Classes/Objective-C"
            publicHeadersPath: "[PackageRoot]/Pod/Objective-C"
        ),
        .target(
            name: "ChameleonSwift",
            dependencies: ["Chameleon"],
            path:"[PackageRoot]/Pod/Classes/Swift"
        )
    ]
    swiftLanguageVersions: [.v5]
)
