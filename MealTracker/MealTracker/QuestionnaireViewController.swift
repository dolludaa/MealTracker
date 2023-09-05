//
//  QuestionnaireViewController.swift
//  MealTracker
//
//  Created by Людмила Долонтаева on 2023-09-04.
//

import Foundation
import UIKit

final class QuestionnaireViewController: UIViewController {
  private let questionButton = UIButton()
  private let healthyImage = UIImageView()

  override func viewDidLoad() {
    super.viewDidLoad()
    setUpLayout()
    setUpStyle()
  }

  private func setUpLayout() {
    healthyImage.translatesAutoresizingMaskIntoConstraints = false
    questionButton.translatesAutoresizingMaskIntoConstraints = false

    view.addSubview(healthyImage)
    view.addSubview(questionButton)

    NSLayoutConstraint.activate([
      healthyImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
      healthyImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
      healthyImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20),

      questionButton.topAnchor.constraint(equalTo: healthyImage.bottomAnchor, constant: 50),
      questionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
      questionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20),
      questionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
      questionButton.heightAnchor.constraint(equalToConstant: 50)

    ])
  }

  private func setUpStyle() {

    view.backgroundColor = AppColorEnum.backgroundColor.color
    
    healthyImage.image = UIImage(named: "healthyImage")

    questionButton.setTitle( "Start the questions", for: .normal)
    questionButton.backgroundColor = .brown
    questionButton.layer.cornerRadius = 20

  }
}
