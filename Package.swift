// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverMapSPM",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "NMapsMap",
            targets: ["NMapsMap", "NMapsGeometry"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://naver.jfrog.io/artifactory/pods/NMapsMap/3.16.2/NMapsMap.zip",
            checksum: "27d977474a569b59882a177a30b88be3f2d99fbd06a14b657fd9f792e3268647"
        ),
        .binaryTarget(name: "NMapsGeometry", path: "./Sources/NMapsGeometry.xcframework")
    ]
)
