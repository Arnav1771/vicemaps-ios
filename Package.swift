// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ViceMaps",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "ViceMaps",
            targets: ["ViceMaps"]
        ),
    ],
    dependencies: [
        // MapLibre Native iOS SDK
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution", from: "5.13.0")
    ],
    targets: [
        .target(
            name: "ViceMaps",
            dependencies: [
                .product(name: "MapLibre", package: "maplibre-gl-native-distribution")
            ],
            path: "ViceMaps"
        )
    ]
)
