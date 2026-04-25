// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "snap-foundation",
	platforms: [
		.iOS(.v16), .macOS(.v15)
	],
    products: [
        .library(
            name: "SnapFoundation",
            targets: ["SnapFoundation"]),
	],
    targets: [
        .target(
            name: "SnapFoundation"
		),
        .testTarget(
            name: "SnapFoundationTests",
            dependencies: ["SnapFoundation"]
        ),
    ],
)
