//
//  EstimatesViewModel.swift
//  StrategyPattern
//
//  Created by Kadir Kutluhan Alev on 18.06.2022.
//

import Foundation

struct EstimatesModel: EstimatesViewPresentableProtocol {
    var vehicleTypeValue: String? = "None"
    var vehicleRareValue: String? = "$0.0"
    var estimatedTimeValue: String? = "0hr 0min"
}

protocol EstimateStrategy {
    func calculateEstimates() -> EstimatesModel
}

class BusEstimateStrategy: EstimateStrategy {
    
    static let sharedInstance: BusEstimateStrategy = BusEstimateStrategy()
    
    func calculateEstimates() -> EstimatesModel {
        return EstimatesModel(vehicleTypeValue: "Bus",
                              vehicleRareValue: "$2.0",
                              estimatedTimeValue: "3hr 15min")
    }
}

class TrainEstimateStrategy: EstimateStrategy {
    
    static let sharedInstance: TrainEstimateStrategy = TrainEstimateStrategy()
    
    func calculateEstimates() -> EstimatesModel {
        return EstimatesModel(vehicleTypeValue: "Train",
                              vehicleRareValue: "$15.0",
                              estimatedTimeValue: "45min")
    }
}

class FerryEstimateStrategy: EstimateStrategy {
    
    static let sharedInstance: FerryEstimateStrategy = FerryEstimateStrategy()
    
    func calculateEstimates() -> EstimatesModel {
        return EstimatesModel(vehicleTypeValue: "Bus",
                              vehicleRareValue: "$8.0",
                              estimatedTimeValue: "2hr 30min")
    }
}
