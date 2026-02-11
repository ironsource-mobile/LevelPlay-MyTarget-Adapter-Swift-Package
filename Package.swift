// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-MyTarget-Adapter-Swift-Package",
  platforms: [.iOS(.v14)],
  products: [
    .library(name: "MyTargetAdapter", targets: ["MyTargetAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/myTargetSDK/mytarget-ios-spm", exact: "5.36.2"),
    .package(url: "https://github.com/ironsource-mobile/Unity-Mediation-iAds-Swift-Package", "9.2.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "MyTargetAdapter",
      dependencies: [
        "MyTargetAdapterSDK",
        .product(name: "MyTargetSDK", package: "mytarget-ios-spm"),
        .product(name: "UnityMediationSDK", package: "Unity-Mediation-iAds-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "MyTargetAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/mytarget-adapter/5.5.0/ISMyTargetAdapter5.5.0.zip",
      checksum: "67e690fd7d7bf3e543f31bed9af76fa08678ba218e55968a14a7a7906eb0bd28"
    )
  ]
)
