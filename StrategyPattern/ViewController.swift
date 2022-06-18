//
//  ViewController.swift
//  StrategyPattern
//
//  Created by Kadir Kutluhan Alev on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let resultsView = ResultsView()
    let optionsView = OptionsView()

    var estimatesViewModel = EstimatesModel()
    
    var estimateStrategy: EstimateStrategy?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        bindViews()
        optionsView.vehicleSelectionDelegate = self
        
        resultsView.configure(withViewModel: estimatesViewModel)
    }
}

// MARK: - VehicleSelectionDelegate
extension ViewController: VehicleSelectionDelegate {
    func onBusSelected() {
        estimateStrategy = BusEstimateStrategy.sharedInstance
        updateEstimates(estimateStrategy: estimateStrategy!)
    }
    
    func onTrainSelected() {
        estimateStrategy = TrainEstimateStrategy.sharedInstance
        updateEstimates(estimateStrategy: estimateStrategy!)
    }
    
    func onFerrySelected() {
        estimateStrategy = FerryEstimateStrategy.sharedInstance
        updateEstimates(estimateStrategy: estimateStrategy!)
    }
    
    func updateEstimates(estimateStrategy: EstimateStrategy) {
        
        let estimateModel = estimateStrategy.calculateEstimates()
        
        estimatesViewModel.vehicleTypeValue = estimateModel.vehicleTypeValue
        estimatesViewModel.vehicleRareValue = estimateModel.vehicleRareValue
        estimatesViewModel.estimatedTimeValue = estimateModel.estimatedTimeValue
        
        resultsView.configure(withViewModel: estimatesViewModel)
    }
}

// MARK: - Constraints
extension ViewController {
    fileprivate func bindViews() {
        view.addSubview(resultsView)
        resultsView.translatesAutoresizingMaskIntoConstraints = false
        resultsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        resultsView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resultsView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        resultsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6).isActive = true
        
        
        view.addSubview(optionsView)
        optionsView.translatesAutoresizingMaskIntoConstraints = false
        optionsView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        optionsView.topAnchor.constraint(equalTo: resultsView.bottomAnchor).isActive = true
        optionsView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
