// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "HaishinKit",
    products: [
        .library(name: "RTMP", targets: ["HTTP"]),
        .library(name: "HTTP", targets: ["RTMP"])
    ],
    dependencies: [
        .package(url: "https://github.com/shogo4405/Logboard.git", from: "2.1.2")
    ],
    targets: [
        .target(name: "Codec"),
        .target(name: "Extension"),
        .target(name: "ISO"),
        .target(name: "Media"),
        .target(name: "Util"),
        .target(name: "FLV"),
        .target(name: "Net", dependencies: ["Codec", "Extension", "ISO", "Media", "Util"]),
        .target(name: "HTTP", dependencies: ["Net"]),
        .target(name: "RTMP", dependencies: ["Net", "FLV"])
    ]
)
