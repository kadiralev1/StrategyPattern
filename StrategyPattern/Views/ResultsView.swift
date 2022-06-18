//
//  ResultsView.swift
//  StrategyPattern
//
//  Created by Kadir Kutluhan Alev on 18.06.2022.
//

import UIKit

class ResultsView: UIView {
    
    private let vehicleTypeTitleLabel: UILabel = {
        let _vehicleTypeTitleLabel = UILabel()
        _vehicleTypeTitleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        _vehicleTypeTitleLabel.text = "Vehicle Type"
        _vehicleTypeTitleLabel.textAlignment = .center
        return _vehicleTypeTitleLabel
    }()
    
    private let vehicleTypeLabel: UILabel = {
        let _vehicleTypeLabel = UILabel()
        _vehicleTypeLabel.font = .systemFont(ofSize: 14, weight: .medium)
        _vehicleTypeLabel.textColor = .lightGray
        _vehicleTypeLabel.textAlignment = .center
        return _vehicleTypeLabel
    }()
    
    private let totalRareTitleLabel: UILabel = {
        let _totalRareTitleLabel = UILabel()
        _totalRareTitleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        _totalRareTitleLabel.text = "Total Rare"
        _totalRareTitleLabel.textAlignment = .center
        return _totalRareTitleLabel
    }()
    
    private let totalRareLabel: UILabel = {
        let _totalRareLabel = UILabel()
        _totalRareLabel.font = .systemFont(ofSize: 14, weight: .medium)
        _totalRareLabel.textColor = .lightGray
        _totalRareLabel.textAlignment = .center
        return _totalRareLabel
    }()
    
    private let estimatedTimeTitleLabel: UILabel = {
        let _estimatedTimeTitleLabel = UILabel()
        _estimatedTimeTitleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        _estimatedTimeTitleLabel.text = "Estimated Time"
        _estimatedTimeTitleLabel.textAlignment = .center
        return _estimatedTimeTitleLabel
    }()
    
    private let estimatedTimeLabel: UILabel = {
        let _estimatedTimeLabel = UILabel()
        _estimatedTimeLabel.font = .systemFont(ofSize: 14, weight: .medium)
        _estimatedTimeLabel.textColor = .lightGray
        _estimatedTimeLabel.textAlignment = .center
        return _estimatedTimeLabel
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        bindViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure(withViewModel: EstimatesViewPresentableProtocol) {
        vehicleTypeLabel.text = withViewModel.vehicleTypeValue
        totalRareLabel.text = withViewModel.vehicleRareValue
        estimatedTimeLabel.text = withViewModel.estimatedTimeValue
    }
    
    private func bindViews() {
        addSubview(vehicleTypeTitleLabel)
        addSubview(vehicleTypeLabel)
        addSubview(totalRareTitleLabel)
        addSubview(totalRareLabel)
        addSubview(estimatedTimeTitleLabel)
        addSubview(estimatedTimeLabel)
        
        vehicleTypeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        vehicleTypeTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        vehicleTypeTitleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        
        vehicleTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        vehicleTypeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        vehicleTypeLabel.topAnchor.constraint(equalTo: vehicleTypeTitleLabel.bottomAnchor, constant: 16).isActive = true
        
        
        totalRareTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        totalRareTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        totalRareTitleLabel.topAnchor.constraint(equalTo: vehicleTypeTitleLabel.bottomAnchor, constant: 48).isActive = true
        
        totalRareLabel.translatesAutoresizingMaskIntoConstraints = false
        totalRareLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        totalRareLabel.topAnchor.constraint(equalTo: totalRareTitleLabel.bottomAnchor, constant: 16).isActive = true
        
        estimatedTimeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        estimatedTimeTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        estimatedTimeTitleLabel.topAnchor.constraint(equalTo: totalRareLabel.bottomAnchor, constant: 48).isActive = true
        
        estimatedTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        estimatedTimeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        estimatedTimeLabel.topAnchor.constraint(equalTo: estimatedTimeTitleLabel.bottomAnchor, constant: 16).isActive = true
        
    }
}
