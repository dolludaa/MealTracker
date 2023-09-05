//
//  SceneDelegate.swift
//  MealTracker
//
//  Created by Людмила Долонтаева on 2023-09-04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions) {
      guard let windowScene = (scene as? UIWindowScene) else { return }
      let mainVC = MainTabBarViewController()
      let window = UIWindow(windowScene: windowScene)
      let navigationVC = UINavigationController(rootViewController: mainVC)
      navigationVC.setNavigationBarHidden(true, animated: false)
      window.rootViewController = navigationVC

      self.window = window
      window.makeKeyAndVisible()
    }
}
