//
//  WOTimelineView.swift
//  Wobit
//
//  Created by Přemysl Mikulenka on 12.07.2023.
//

import UIKit


class WOTimelineView: PWProgrammaticUIView {
    
    // MARK: - Views
    
    //let trainingTimeLabel: UILabel = UILabel()
 
    private lazy var vLineView: UIView = {
        let _vLineView = UIView()
                
        _vLineView.backgroundColor = .red

        
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
            vLineView.widthAnchor.constraint(equalToConstant: 5),
            vLineView.heightAnchor.constraint(equalToConstant: 250),
        ])
        
        
        for itemIndex in 0..<5 {
            let trainingLabel: UILabel = UILabel()
            let hLineView: UIView = UIView()
            hLineView.backgroundColor = .green
            trainingLabel.text = "Test Label \(itemIndex)"
            
            self.addConstrainedSubViews(trainingLabel, hLineView)
            
            NSLayoutConstraint.activate([
                hLineView.topAnchor.constraint(equalTo: vLineView.topAnchor, constant: CGFloat((itemIndex * 50) + 25)),
                hLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                hLineView.widthAnchor.constraint(equalToConstant: 200),
                hLineView.heightAnchor.constraint(equalToConstant: 5),
                
                trainingLabel.bottomAnchor.constraint(equalTo: hLineView.topAnchor, constant: -3),
                trainingLabel.leadingAnchor.constraint(equalTo: vLineView.trailingAnchor, constant: 10),
            ])
        }
    }
    
    
}
