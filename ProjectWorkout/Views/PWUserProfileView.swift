//
//  PWUserProfileVeiw.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import UIKit


class PWUserProfileView: PWProgrammaticUIView {
    
    private let vc = PWUserProfileViewViewModel()
    
    private lazy var userNameTitle: UILabel = {
        let _userNameTitle = UILabel()
        _userNameTitle.font = .systemFont(ofSize: 24, weight: .semibold)
        _userNameTitle.text = vc.userManager.user?.name
        
        return _userNameTitle
    }()
    
    private lazy var userDescription: UILabel = {
        let _userDescription = UILabel()
        _userDescription.text = "Number of Activities: \(vc.userManager.user?.activityArray.count)"
        
        return _userDescription
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(userNameTitle, userDescription)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            userNameTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            userNameTitle.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            userDescription.topAnchor.constraint(equalTo: self.userNameTitle.bottomAnchor, constant: 20),
            userDescription.leadingAnchor.constraint(equalTo: self.userNameTitle.leadingAnchor),
        ])
    }
            
    
}
