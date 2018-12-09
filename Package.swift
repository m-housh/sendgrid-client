// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SendgridClient",
    products: [
        .library(name: "SendgridClient", targets: ["SendgridClient"])
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
    ],

    targets: [
        .target(name: "SendgridClient", dependencies: ["Vapor"]),
        .testTarget(name: "SendgridClientTests", dependencies: ["SendgridClient"])
    ]
)
