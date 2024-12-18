// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

/**
 远程仓库：
 1、先在GitHub个人仓库中创建一个 xxx名称 的仓库
 2、终端 -- cd 本地某文件夹 -- git clone https://xxx仓库.xxx.git（HTTPS路径）
 3、在刚才克隆到本地的文件夹（xxx仓库）中创建 自定义 package
 4、在 git add. git commit 之后  git push origin main(可能是其他分支名)，将本地package提交到远程仓库
 补充：第3点中 Package.swift 必须位于该文件夹的第一层（即将 package文件夹中的所有文件转移到 xxx仓库文件夹中）
 5、添加版本号 git tag 1.0.0 -m "xxxxxx"，推送版本号 git push --tags
 6、引入该库，PROJECT -- 名称 -- Package Dependencies  --  +号，输入该库的远程仓库地址（Code -- HTTPS/SSH)，选择版本号，Add Package
 */

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
