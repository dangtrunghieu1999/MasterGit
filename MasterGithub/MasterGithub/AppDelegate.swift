//
//  AppDelegate.swift
//  MasterGithub
//
//  Created by Trung Hieu on 9/15/22.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

@available(iOS 13.0, *)
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if SYSTEM_VERSION_LESS_THAN(version: "13.0") {
            self.setupWindows()
        }
        return true
    }
    
    // MARK: Setup Window
    
    func SYSTEM_VERSION_LESS_THAN(version: String) -> Bool {
        return UIDevice.current.systemVersion.compare(version,
                                                      options: NSString.CompareOptions.numeric) == ComparisonResult.orderedAscending
    }
    
    func setupWindows() {
        let rootViewController = ViewController()
        let navigation = UINavigationController(rootViewController: rootViewController)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
    }


    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession, 
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration",
                                    sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication,
                     didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}
