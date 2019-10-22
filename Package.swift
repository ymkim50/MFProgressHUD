// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "MFProgressHUD",
    platforms: [.iOS(.v10)],
    products: [.library(name: "MFProgressHUD", targets: ["MFProgressHUD"])],
    targets: [.target(name: "MFProgressHUD", path: "MFProgressHUD")],
    swiftLanguageVersions: [.v5]
)
