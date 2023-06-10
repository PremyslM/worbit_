//
//  PWPrimaryCollectionViewCell.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.06.2023.
//

import UIKit


class PWPrimaryCollectionViewCell: UICollectionViewCell {
        
    public lazy var titleLabel: UILabel = UILabel()
    public lazy var iconImage: UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Non-suported")
    }
                
}


extension PWPrimaryCollectionViewCell {
    
    private func setupUI() {                
        self.addConstrainedSubViews(titleLabel, iconImage)
                
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        
        iconImage.tintColor = .theme.primaryBackground
        
        self.layer.cornerRadius = 8
        self.backgroundColor = .theme.secondaryWhite                
    }
        
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: self.iconImage.leadingAnchor, constant: -10),
                        
            iconImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            iconImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
        ])
    }
    
    
}
