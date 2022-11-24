// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("it's public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "ios-binahactivator",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "BinahActivator",
            targets: [
                "BinahActivator"
            ]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "BinahActivator",
            url: "https://github.com/darwell-inc/ios-binahactivator-spm/releases/download/1.0.3/BinahActivator.xcframework.zip",
            checksum: "90dd26a29e92fc089d1e42f1a00b932a4abdfcda93874997a3a2d4b4d3c08d47"
        )
    ]
)

