// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NYTPhotoViewer",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "NYTPhotoViewer",
            targets: ["NYTPhotoViewer"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:cloudninewx/PINRemoteImage.git", from: "3.0.4")
    ],
    targets: [
        .target(
            name: "NYTPhotoViewer",
            dependencies: ["PINRemoteImage"],
            path: "NYTPhotoViewer",
            cSettings: [
              .define("ANIMATED_GIF_SUPPORT", to: "1")
            ]
        )
    ]
)
