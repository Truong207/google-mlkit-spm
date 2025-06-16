// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "MLKitSPM",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "MLKitBarcodeScanning",
            targets: ["MLKitBarcodeScanning", "MLImage", "MLKitVision", "Common"])
    ],
    dependencies: [
        .package(url: "https://github.com/google/promises.git", from: "2.1.1"),
        .package(url: "https://github.com/google/GoogleDataTransport.git", from: "9.2.0"),
        .package(url: "https://github.com/google/GoogleUtilities.git", from: "7.7.1"),
        .package(url: "https://github.com/google/gtm-session-fetcher.git", from: "3.1.0"),
        .package(url: "https://github.com/firebase/nanopb.git", .upToNextMinor(from: "2.30909.0")),
    ],
    targets: [
        // these binaryTarget will be overriden when GitHub actions run, so do not edit
        .binaryTarget(name: "MLImage", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//MLImage.xcframework.zip", checksum: ""),
        .binaryTarget(name: "MLKitBarcodeScanning", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//MLKitBarcodeScanning.xcframework.zip", checksum: ""),
        .binaryTarget(name: "MLKitCommon", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//MLKitCommon.xcframework.zip", checksum: ""),
        .binaryTarget(name: "MLKitVision", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//MLKitVision.xcframework.zip", checksum: ""),
        .binaryTarget(name: "GoogleToolboxForMac", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//GoogleToolboxForMac.xcframework.zip", checksum: "e3da98a5aff463afbda77b70c0b382d0366dbcb3fc89e4ab979bce7c5fd412f1"),
        .binaryTarget(name: "GoogleUtilitiesComponents", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//GoogleUtilitiesComponents.xcframework.zip", checksum: "69653f38f45dd33741271e9c5855910aef4218107cbd0ee0342eb03522fde0ba"),
        .binaryTarget(name: "Protobuf", url: "https://github.com/Truong207/google-mlkit-spm/releases/download//Protobuf.xcframework.zip", checksum: "703010112fe56992c387943e4d2e648bfb1f04f7bf39a920e43c78391525f53e"),
        .target(
            name: "Common",
            dependencies: [
                "MLKitCommon",
                "GoogleToolboxForMac",
                "GoogleUtilitiesComponents",
                "Protobuf",
                .product(name: "GULAppDelegateSwizzler", package: "GoogleUtilities"),
                .product(name: "GULEnvironment", package: "GoogleUtilities"),
                .product(name: "GULISASwizzler", package: "GoogleUtilities"),
                .product(name: "GULLogger", package: "GoogleUtilities"),
                .product(name: "GULMethodSwizzler", package: "GoogleUtilities"),
                .product(name: "GULNSData", package: "GoogleUtilities"),
                .product(name: "GULNetwork", package: "GoogleUtilities"),
                .product(name: "GULReachability", package: "GoogleUtilities"),
                .product(name: "GULUserDefaults", package: "GoogleUtilities"),
                .product(name: "GTMSessionFetcher", package: "gtm-session-fetcher"),
                .product(name: "GoogleDataTransport", package: "GoogleDataTransport"),
                .product(name: "nanopb", package: "nanopb"),
                .product(name: "FBLPromises", package: "promises"),
            ]),
    ]
)
