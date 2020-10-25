// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ScreenCorners",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "ScreenCorners", targets: ["ScreenCorners"]),
    ],
    targets: [
        .target(name: "ScreenCorners"),
    ]
)
