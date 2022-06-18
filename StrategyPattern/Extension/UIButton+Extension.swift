//
//  UIButton+Extension.swift
//  StrategyPattern
//
//  Created by Kadir Kutluhan Alev on 18.06.2022.
//

import UIKit

extension UIButton {
    func addSystemImageToButton(imageName: String) {
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 40, weight: .bold, scale: .large)
        let largeBoldBus = UIImage(systemName: imageName, withConfiguration: largeConfig)
        setImage(largeBoldBus, for: .normal)
    }
}
