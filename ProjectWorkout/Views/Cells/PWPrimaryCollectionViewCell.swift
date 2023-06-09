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
        
        self.layer.cornerRadius = 8
        self.backgroundColor = .theme.secondaryWhite                
    }
        
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            
            iconImage.leadingAnchor.constraint(equalTo: self.titleLabel.trailingAnchor, constant: 10),
            iconImage.topAnchor.constraint(equalTo: self.titleLabel.topAnchor),
        ])
    }
    
    
}
