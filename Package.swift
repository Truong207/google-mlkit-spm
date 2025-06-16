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
        .binaryTarget(name: "MLImage", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/MLImage.xcframework.zip", checksum: "7c09d37bf4893f751cce8f326d8c53518be11e4d7af0f45e51822747f2185a2c"),
        .binaryTarget(name: "MLKitBarcodeScanning", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/MLKitBarcodeScanning.xcframework.zip", checksum: "8ed5acba6485f9ba42cd594dc3e93b470fe4f7149578f2cac515087e20b519fa"),
        .binaryTarget(name: "MLKitCommon", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/MLKitCommon.xcframework.zip", checksum: "902ef4d7d13aee7eaf23126f6f0e48e1abd3e5c183279c731ad8565f2b18d809"),
        .binaryTarget(name: "MLKitVision", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/MLKitVision.xcframework.zip", checksum: "9fdd41e976bb130d1b1656821be3feaf0a8d27b6b35c7852f5efe0aced72183f"),
        .binaryTarget(name: "GoogleToolboxForMac", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/GoogleToolboxForMac.xcframework.zip", checksum: "648446a62c8e7538993d6af3ce61bf2a12a6de403fd3ffa46fd486513f087b70"),
        .binaryTarget(name: "GoogleUtilitiesComponents", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/GoogleUtilitiesComponents.xcframework.zip", checksum: "909c88475fc106e46ac79def769e81926ac5104308d769d5a03e70a5a878186c"),
        .binaryTarget(name: "Protobuf", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.3/Protobuf.xcframework.zip", checksum: "792cd55a646c78717db958bed47f82f26913bc5094a49d156335ac3737b6a267"),
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
