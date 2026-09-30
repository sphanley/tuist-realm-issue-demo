import ProjectDescription

let project = Project(
    name: "RealmDemo",
    targets: [
        .target(
            name: "RealmDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.RealmDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "RealmDemo/Sources",
                "RealmDemo/Resources",
            ],
            dependencies: [
                .external(name: "RealmSwift")
            ]
        ),
        .target(
            name: "RealmDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.RealmDemoTests",
            infoPlist: .default,
            buildableFolders: [
                "RealmDemo/Tests"
            ],
            dependencies: [.target(name: "RealmDemo")]
        ),
    ]
)
