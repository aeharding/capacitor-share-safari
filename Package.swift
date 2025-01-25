// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorShareSafari",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorShareSafari",
            targets: ["ShareSafariPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "ShareSafariPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ShareSafariPlugin"),
        .testTarget(
            name: "ShareSafariPluginTests",
            dependencies: ["ShareSafariPlugin"],
            path: "ios/Tests/ShareSafariPluginTests")
    ]
)
