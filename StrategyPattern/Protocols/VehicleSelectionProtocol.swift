//
//  VehicleSelectionProtocol.swift
//  StrategyPattern
//
//  Created by Kadir Kutluhan Alev on 18.06.2022.
//

import Foundation

protocol VehicleSelectionDelegate: AnyObject {
    func onBusSelected()
    func onTrainSelected()
    func onFerrySelected()
}
