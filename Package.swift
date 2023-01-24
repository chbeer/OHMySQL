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
            path: "OHMySQL/Sources",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("include"),
                .headerSearchPath("Categories"),
                .headerSearchPath("Constants"),
                .headerSearchPath("Models"),
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
