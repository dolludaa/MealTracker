//
//  AppColorEnum.swift
//  MealTracker
//
//  Created by Людмила Долонтаева on 2023-09-04.
//

import Foundation
import UIKit

enum AppColorEnum {
    case backgroundColor

    var color: UIColor {
        switch self {
        case .backgroundColor:
            return UIColor(hex: 0x93b24b)
        }
    }
}
