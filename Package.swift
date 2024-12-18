// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LoggerLibrary",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LoggerLibrary",
            targets: ["LoggerLibrary"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LoggerLibrary"),
        .testTarget(
            name: "LoggerLibraryTests",
            dependencies: ["LoggerLibrary"]
        ),
    ],
    swiftLanguageModes: [.v4]
)

//    dependencies: [ // 添加依赖库
//        dependencies: [
//            .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
//            ],
//    ],
