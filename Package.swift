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
            checksum: "43c3ae2b1d86fa1e1a402d9b797f5998062ea9fb34afac727003299f8ecf1e72"
        )
    ]
)

