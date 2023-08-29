//
//  InfoPlists.swift
//  MyPlugin
//
//  Created by Junyoung on 2023/08/23.
//

import ProjectDescription

public extension Project {
    static let appInfoPlist: [String: InfoPlist.Value] = [
        "CFBundleShortVersionString": "0.1.0",
        "CFBundleDevelopmentRegion": "ko",
        "CFBundleVersion": "1",
        "CFBundleIdentifier": "com.quriously.qube",
        "CFBundleDisplayName": "WakeUp",
        "UILaunchStoryboardName": "Launch Screen",
        "UIUserInterfaceStyle": "Light",
        "UIRequiresFullScreen": true,
        "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"],
        "ITSAppUsesNonExemptEncryption": false,
        "UIApplicationSceneManifest": [
            "UIApplicationSupportsMultipleScenes": false,
            "UISceneConfigurations": [
                "UIWindowSceneSessionRoleApplication": [
                    [
                        "UISceneConfigurationName": "Default Configuration",
                        "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                    ],
                ]
            ]
        ],
        "UIAppFonts": [
            "Item 0": "SpoqaHanSansNeo-Bold.ttf",
            "Item 1": "SpoqaHanSansNeo-Regular.ttf",
            "Item 2": "SpoqaHanSansNeo-Light.ttf",
            "Item 3": "SpoqaHanSansNeo-Medium.ttf",
            "Item 4": "SpoqaHanSansNeo-Thin.ttf"
        ]
    ]
    
    static let demoInfoPlist: [String: InfoPlist.Value] = [
        "CFBundleShortVersionString": "0.1.0",
        "CFBundleDevelopmentRegion": "ko",
        "CFBundleVersion": "1",
        "CFBundleIdentifier": "com.quriously.qube.test",
        "CFBundleDisplayName": "WakeUpTest",
        "UILaunchStoryboardName": "Launch Screen",
        "UIUserInterfaceStyle": "Light",
        "UIRequiresFullScreen": true,
        "UISupportedInterfaceOrientations": ["UIInterfaceOrientationPortrait"],
        "ITSAppUsesNonExemptEncryption": false,
        "UIApplicationSceneManifest": [
            "UIApplicationSupportsMultipleScenes": false,
            "UISceneConfigurations": [
                "UIWindowSceneSessionRoleApplication": [
                    [
                        "UISceneConfigurationName": "Default Configuration",
                        "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
                    ],
                ]
            ]
        ],
        "UIAppFonts": [
            "Item 0": "SpoqaHanSansNeo-Bold.ttf",
            "Item 1": "SpoqaHanSansNeo-Regular.ttf",
            "Item 2": "SpoqaHanSansNeo-Light.ttf",
            "Item 3": "SpoqaHanSansNeo-Medium.ttf",
            "Item 4": "SpoqaHanSansNeo-Thin.ttf"
        ]
    ]
}
