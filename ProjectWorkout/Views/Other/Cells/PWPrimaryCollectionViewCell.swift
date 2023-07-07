//
//  PWPrimaryCollectionViewCell.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.06.2023.
//

import UIKit


class PWPrimaryCollectionViewCell: UICollectionViewCell {
    
    public lazy var detailVC: PWDetailViewController = PWDetailViewController()
    
    public var delegate: UIViewController?
    
    private lazy var titleLabel: UILabel = UILabel()
    private lazy var iconImage: UIImageView = UIImageView()
    private lazy var descriptionLabel: UILabel = UILabel()
    
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
    
    // MARK: - Public
    
    public func setExercise(title: String, image: String, description: String) {
        self.titleLabel.text = title
        self.iconImage.image = UIImage(
            systemName: image
        )
        self.descriptionLabel.text = description
    }
    
    
    // MARK: - Private
    
    private func setupUI() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(presentView))
        
        self.addGestureRecognizer(tap)
        
        self.addConstrainedSubViews(titleLabel, iconImage, descriptionLabel)
        
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        
        iconImage.tintColor = .theme.primaryBackground
        
        descriptionLabel.textColor = .black
        descriptionLabel.font = .systemFont(ofSize: 12, weight: .light)
        descriptionLabel.numberOfLines = 3
        descriptionLabel.textAlignment = .left
        
        self.layer.cornerRadius = 8
        self.backgroundColor = .theme.secondaryWhite
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: self.iconImage.leadingAnchor, constant: -10),
            
            iconImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            iconImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            iconImage.widthAnchor.constraint(equalToConstant: 20),
            iconImage.heightAnchor.constraint(equalToConstant: 20),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: iconImage.leadingAnchor, constant: -15),
        ])
    }
    
    @objc private func presentView(_ sender: UITapGestureRecognizer? = nil) {
        delegate?.present(detailVC, animated: true, completion: nil)
    }
    
}
