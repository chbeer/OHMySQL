// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OHMySQL",
    platforms: [.iOS(.v14), .macOS(.v10_13)],
    products: [
        .library(
            name: "OHMySQL",
            targets: ["OHMySQL"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OHMySQL",
            dependencies: ["MySQL"],
            path: "OHMySQL",
            exclude: ["lib"],
            cSettings: [
                .headerSearchPath("Sources"),
                .headerSearchPath("Sources/Categories"),
                .headerSearchPath("Sources/Constants"),
                .headerSearchPath("Sources/Models"),
            ]
        ),
        .binaryTarget(
            name: "MySQL",
            path: "OHMySQL/lib/MySQL.xcframework"
        ),
        .testTarget(
            name: "OHMySQLTests",
            dependencies: ["OHMySQL"],
            path: "SampleProject/OHMySQLTests"
        )
    ]
)
