// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PJSIPKit",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "PJSIPKit", targets: ["PJSIPKit", "PJSIPKitLinker"])
    ],
    targets: [
        .target(
            name: "PJSIPKitLinker",
            dependencies: ["PJSIPKit"],
            path: "Sources/PJSIPKitLinker",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("Network"),
                .linkedFramework("Security"),
                .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "PJSIPKit",
            url: "https://github.com/dial9/pjsip-kit/releases/download/0.0.0-dev+9581546/PJSIPKit-0.0.0-dev+9581546.xcframework.zip",
            checksum: "bb8240a6a56ea2daadc69e0f190cf19bd2170e5ad5a07ded8d7011bd536d0224"
        )
    ]
)
