// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeckOfPlayingCards",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DeckOfPlayingCards",
            targets: ["DeckOfPlayingCards"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/duhnnie/Swift-FisherYates", from: "1.0.0"),
        .package(url: "https://github.com/duhnnie/Swift-PlayingCard", from: "1.0.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DeckOfPlayingCards",
            dependencies: [
                .product(name: "FisherYates", package: "Swift-FisherYates"),
                .product(name: "PlayingCard", package: "Swift-PlayingCard")
            ]),
        .testTarget(
            name: "DeckOfPlayingCardsTests",
            dependencies: ["DeckOfPlayingCards"]),
    ]
)
