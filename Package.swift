// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("core-ios-spm is public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "darwell-core",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DarwellCore",
            targets: [
                "DarwellCore",
            ]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "DarwellCore",
            url: "https://github.com/galen-it/core-ios-spm/releases/download/1.1.2/DarwellCore.xcframework.zip",
            checksum: "70ee3bc2e895b23bbcb94e940db283dad24e7dda78163617e13cd42c80052e40"
        )
    ]
)
