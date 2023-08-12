// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DotoriAppStoreBot",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "DotoriAppStoreBot",
            targets: [
                "DotoriAppStoreBot"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftcordApp/DiscordKit", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "DotoriAppStoreBot",
            dependencies: [
                .product(name: "DiscordKitBot", package: "DiscordKit")
            ]
        ),
        .testTarget(
            name: "DotoriAppStoreBotTests",
            dependencies: ["DotoriAppStoreBot"]),
    ]
)
