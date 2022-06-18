//
//  OptionsView.swift
//  StrategyPattern
//
//  Created by Kadir Kutluhan Alev on 18.06.2022.
//

import UIKit

class OptionsView: UIView {
    
    private let optionsHStack: UIStackView = {
        let _optionsHStack = UIStackView()
        _optionsHStack.axis = .horizontal
        _optionsHStack.distribution = .fillEqually
        return _optionsHStack
    }()
    
    private let busButton: UIButton = {
        let _busButton = UIButton()
        _busButton.addSystemImageToButton(imageName: "bus")
        _busButton.tag = 0
        return _busButton
    }()
    
    private let trainButton: UIButton = {
        let _trainButton = UIButton()
        _trainButton.addSystemImageToButton(imageName: "train.side.front.car")
        _trainButton.tag = 1
        return _trainButton
    }()
    
    private let ferryButton: UIButton = {
        let _ferryButton = UIButton()
        _ferryButton.addSystemImageToButton(imageName: "ferry")
        _ferryButton.tag = 2
        return _ferryButton
    }()
    
    weak var vehicleSelectionDelegate: VehicleSelectionDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bindViews()
        addActionsForButtons()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @objc private func vehicleSelected(_ button: UIButton) {
        switch button.tag {
        case 0:
            vehicleSelectionDelegate?.onBusSelected()
        case 1:
            vehicleSelectionDelegate?.onTrainSelected()
        case 2:
            vehicleSelectionDelegate?.onFerrySelected()
        default:
            print("Not found")
        }
    }
    
    private func addActionsForButtons() {
        [busButton,
        trainButton,
         ferryButton].forEach { button in
            button.addTarget(self, action: #selector(vehicleSelected), for: .touchUpInside)
        }
    }
    
    private func bindViews() {
        addSubview(optionsHStack)
        optionsHStack.addArrangedSubview(busButton)
        optionsHStack.addArrangedSubview(trainButton)
        optionsHStack.addArrangedSubview(ferryButton)
        
        optionsHStack.translatesAutoresizingMaskIntoConstraints = false
        optionsHStack.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        optionsHStack.heightAnchor.constraint(equalToConstant: 240).isActive = true
    }
}
