//
//  PWQuoteBlockView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 11.07.2023.
//

import UIKit


class PWQuoteBlockView: PWProgrammaticUIView {
    
    private lazy var topLineView: PWLineView = PWLineView()
    private lazy var bottomLineView: PWLineView = PWLineView()
    
    private lazy var quoteTextLabel: UILabel = {
        let _quoteTextLabel = UILabel()
        
        _quoteTextLabel.textColor = .black
        _quoteTextLabel.text = "Today, we will focus on strengthening the upper body with exercises such as push-ups, climbing, and abdominal including planks and various stretches."
        _quoteTextLabel.numberOfLines = 0
        
        return _quoteTextLabel
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(topLineView, bottomLineView, quoteTextLabel)        
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            topLineView.topAnchor.constraint(equalTo: self.topAnchor),
            topLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topLineView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3),
            
            bottomLineView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bottomLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomLineView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 2/3),
            
            quoteTextLabel.topAnchor.constraint(equalTo: topLineView.bottomAnchor, constant: 10),
            quoteTextLabel.bottomAnchor.constraint(equalTo: bottomLineView.topAnchor, constant: -10),
            quoteTextLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            quoteTextLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    
}
