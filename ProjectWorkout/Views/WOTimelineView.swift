//
//  WOTimelineView.swift
//  Wobit
//
//  Created by Přemysl Mikulenka on 12.07.2023.
//

import UIKit


class WOTimelineView: PWProgrammaticUIView {
        
    private let viewModel: WOTimelineViewModel = WOTimelineViewModel()
    
    // MARK: - Views
    
    //let trainingTimeLabel: UILabel = UILabel()
 
    private lazy var vLineView: UIView = {
        let _vLineView = UIView()
                
        _vLineView.backgroundColor = .theme.darkGray
        
        return _vLineView
    }()
    
    private lazy var singleTrainingView: UIView = {
        let _singleTrainingView: UIView = UIView()
        
        return _singleTrainingView
    }()
    
    
    // MARK: - Layout Config
    
    override func setConfig() {
        self.addConstrainedSubViews(vLineView)
    }
    
    override func setConstraints() {
        
        NSLayoutConstraint.activate([
            vLineView.topAnchor.constraint(equalTo: self.topAnchor),
            vLineView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            vLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            vLineView.widthAnchor.constraint(equalToConstant: 2),
            vLineView.heightAnchor.constraint(equalToConstant: 275),
        ])
        
        
        for itemIndex in 0..<3 { //TODO: Hard core data
            let trainingLabel: UILabel = UILabel()
            let hLineView: UIView = UIView()
            hLineView.backgroundColor = .theme.gray
            trainingLabel.text = "Test Label \(itemIndex)"
            trainingLabel.textColor = .theme.accent
            
            if itemIndex != 0 {
                trainingLabel.alpha = 0.35
                hLineView.alpha = 0.35
            }
            
            self.addConstrainedSubViews(trainingLabel, hLineView)
            
            NSLayoutConstraint.activate([
                hLineView.topAnchor.constraint(equalTo: vLineView.topAnchor, constant: CGFloat(Double((itemIndex * 55)) + 27.5)),
                hLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                hLineView.widthAnchor.constraint(equalToConstant: 300),
                hLineView.heightAnchor.constraint(equalToConstant: 1.5),
                
                trainingLabel.bottomAnchor.constraint(equalTo: hLineView.topAnchor),
                trainingLabel.leadingAnchor.constraint(equalTo: vLineView.trailingAnchor, constant: 10),
            ])
        }
    }
    
    
}
