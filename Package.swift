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
        .binaryTarget(name: "MLImage", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/MLImage.xcframework.zip", checksum: "7c09d37bf4893f751cce8f326d8c53518be11e4d7af0f45e51822747f2185a2c"),
        .binaryTarget(name: "MLKitBarcodeScanning", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/MLKitBarcodeScanning.xcframework.zip", checksum: "8ed5acba6485f9ba42cd594dc3e93b470fe4f7149578f2cac515087e20b519fa"),
        .binaryTarget(name: "MLKitCommon", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/MLKitCommon.xcframework.zip", checksum: "902ef4d7d13aee7eaf23126f6f0e48e1abd3e5c183279c731ad8565f2b18d809"),
        .binaryTarget(name: "MLKitVision", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/MLKitVision.xcframework.zip", checksum: "9fdd41e976bb130d1b1656821be3feaf0a8d27b6b35c7852f5efe0aced72183f"),
        .binaryTarget(name: "GoogleToolboxForMac", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/GoogleToolboxForMac.xcframework.zip", checksum: "d7f2011e77f8187bda6a6960353b2c9018e5d0b93b759f1b4d27547e27f86712"),
        .binaryTarget(name: "GoogleUtilitiesComponents", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/GoogleUtilitiesComponents.xcframework.zip", checksum: "cfc72a70c2a4da2d68e5d35c9a08e28c27ae3a7ce05b19a30eb333e4dff2e2d4"),
        .binaryTarget(name: "Protobuf", url: "https://github.com/Truong207/google-mlkit-spm/releases/download/1.1.2/Protobuf.xcframework.zip", checksum: "9fe69802f87a25e9b4706eecd3c11ac1a8d2d6fcc9cd90678b1ad7e458b3e864"),
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
