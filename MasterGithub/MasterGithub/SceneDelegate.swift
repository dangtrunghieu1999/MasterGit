//
//  SceneDelegate.swift
//  MasterGithub
//
//  Created by Trung Hieu on 9/15/22.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let window = (scene as? UIWindowScene) else { return }
        self.setupWindow(windowScene: window)
    }
    
    func setupWindow(windowScene: UIWindowScene) {
        
        let rootViewController = ViewController()
        let navigation = UINavigationController(rootViewController: rootViewController)
        
        self.window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        self.window?.windowScene = windowScene
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}
