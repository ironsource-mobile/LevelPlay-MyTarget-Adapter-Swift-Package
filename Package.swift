// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MyTarget-Adapter-Swift-Package",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "MyTargetAdapter", targets: ["MyTargetAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm", exact: "5.45.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "MyTargetAdapter",
      dependencies: [
        "MyTargetAdapterSDK",
        .product(name: "MyTargetSDK", package: "mytarget-ios-spm"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "MyTargetAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mytarget-adapter/5.12.0/ISMyTargetAdapter5.12.0.zip",
      checksum: "73f6b674f0f5608af104996c862ed474086a40fb93aeae718a77d5fbde7af65e"
    )
  ]
)
