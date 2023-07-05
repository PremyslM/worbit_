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
    
    private var activity: Activity? {
        didSet {
            detailVC.setUI(activity: activity!)
                        
        }
    }
    
        
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
    
    public func setActivity(activity: Activity) {
        self.activity = activity
        
        titleLabel.text = activity.name
        iconImage.image = UIImage(systemName: activity.image ?? "xmark")
    }
    
    public func setExercise(title: String, image: String) {
        self.titleLabel.text = title
        self.iconImage.image = UIImage(systemName: image)
    }
    
    
    // MARK: - Private
    
    private func setupUI() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(presentView))
        
        self.addGestureRecognizer(tap)
        
        self.addConstrainedSubViews(titleLabel, iconImage)
                
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        titleLabel.text = activity?.name
        
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
        
    @objc private func presentView(_ sender: UITapGestureRecognizer? = nil) {                
        delegate?.present(detailVC, animated: true, completion: nil)
    }
    
}
