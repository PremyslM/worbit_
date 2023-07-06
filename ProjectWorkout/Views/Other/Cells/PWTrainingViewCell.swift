//
//  PWTrainingViewCell.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import UIKit


class PWTrainingViewCell: PWProgrammaticUIView {
    
    private lazy var titleLabel: UILabel = {
        let _titleLabel = UILabel()
        
        _titleLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        _titleLabel.textColor = .black
        
        return _titleLabel
    }()
    
    private lazy var timeTitleLabel: UILabel = {
        let _timeTitleLabel = UILabel()
        
        _timeTitleLabel.textColor = .systemGreen
        _timeTitleLabel.font = .preferredFont(forTextStyle: .callout, compatibleWith: .current)
        
        return _timeTitleLabel
    }()
    
    
    override func setConfig() {
        self.backgroundColor = .theme.secondaryWhite
        
        self.addConstrainedSubViews(titleLabel, timeTitleLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 40),
            
            timeTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 20),
            timeTitleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            timeTitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.heightAnchor.constraint(equalToConstant: 50),
            self.widthAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    public func setContent(title: String, timeTitleLabel: String) {
        self.titleLabel.text = title
        self.timeTitleLabel.text = timeTitleLabel
    }
    
    
}


extension PWTrainingViewCell {
        
    /**
     Sets up and adds an info card view below a parent view.

     - Parameters:
        - parent: The parent view below which the info card view will be added.

     This method creates a new `UIView` instance and adds it to the `daysStackView` as an arranged subview. The info card view has a gray background color and is constrained to the parent view using Auto Layout constraints.
     **/
    public func setInInfoCard(stackView: UIStackView, training: Training) {
        let infoView = PWTrainingInfoCardView()
        infoView.setTraining(training)
        infoView.backgroundColor = .gray
        infoView.setContent(difficulty: 3)
        infoView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(infoView)
               
        NSLayoutConstraint.activate([
            infoView.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 10),
            infoView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            infoView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            infoView.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    
}
