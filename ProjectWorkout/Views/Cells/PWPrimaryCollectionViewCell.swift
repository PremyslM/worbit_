//
//  PWPrimaryCollectionViewCell.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.06.2023.
//

import UIKit


class PWPrimaryCollectionViewCell: UICollectionViewCell {
    
    private lazy var contentStackView: UIStackView = UIStackView()
    public lazy var titleLabel: UILabel = UILabel()
    
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
        self.addConstrainedSubViews(contentStackView)
        contentStackView.addArrangedSubview(titleLabel)
        contentStackView.alignment = .top
        
        titleLabel.text = "asd"
        titleLabel.textColor = .black
        
        self.layer.cornerRadius = 8
        self.backgroundColor = .theme.secondaryWhite                
    }
        
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: self.topAnchor),
            contentStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
    }
    
    
}
