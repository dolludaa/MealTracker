//
//  MainTabBarViewController.swift
//  MealTracker
//
//  Created by Людмила Долонтаева on 2023-09-04.
//

import UIKit

final class MainTabBarViewController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    generateTabBar()
    addSeparatorLine()
  }

  private func generateTabBar() {
    viewControllers = [
      generateNavigationVC(
        viewController: QuestionnaireViewController(),
        title: "Questions",
        imageName: "questionmark.diamond.fill"
      ),
      generateNavigationVC(
        viewController: QuestionnaireViewController(),
        title: "Calender",
        imageName: "calendar.circle.fill"
      )
    ]
  }

  private func generateNavigationVC(
    viewController: UIViewController,
    title: String,
    imageName: String) -> UIViewController {
      let navigationVC = UINavigationController(rootViewController: viewController)
      navigationVC.tabBarItem.title = title
      navigationVC.tabBarItem.image = UIImage(systemName: imageName)
      return navigationVC
    }

  private func addSeparatorLine() {
    let appearance = UITabBarAppearance()
    appearance.configureWithDefaultBackground()

    appearance.shadowColor = UIColor.gray.withAlphaComponent(0.3)
    appearance.shadowImage = UIImage()

    tabBar.scrollEdgeAppearance = appearance
  }
}
