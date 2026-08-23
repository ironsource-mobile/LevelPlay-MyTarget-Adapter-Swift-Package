// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MyTarget-Adapter-Swift-Package",
  platforms: [.iOS("14.0")],
  products: [
    .library(name: "MyTargetAdapter", targets: ["MyTargetAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm", exact: "5.46.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mytarget-adapter/5.13.0/ISMyTargetAdapter5.13.0.zip",
      checksum: "bf132b75ab94ecac0f496c5447843ec1baa469ee36bab4a424f558a885eb5e71"
    )
  ]
)
