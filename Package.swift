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
	dependencies: [
		.package(url: "git@github.com:ivalx1s/swift-tensorflowlite-spm.git", from: "2.7.0"),
	],
    targets: [
       .binaryTarget(
            name: "BinahActivator",
            url: "https://github.com/darwell-inc/ios-binahactivator-spm/releases/download/1.0.3/BinahActivator.xcframework.zip",
            checksum: "36c66e44dc091cbdfcf448e00d83877bf8b120224883c33d05b7a8967f9be3bf"
        )
    ]
)

