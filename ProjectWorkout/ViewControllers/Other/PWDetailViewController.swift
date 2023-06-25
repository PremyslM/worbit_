//
//  PWDetailViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.06.2023.
//

import UIKit


class PWDetailViewController: UIViewController {
    
    private lazy var detailInfoView: PWActivityDetailView = {
        let _detailInfoView = PWActivityDetailView()
        
        return _detailInfoView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addConstrainedSubViews(detailInfoView)
        self.view.backgroundColor = .theme.primaryBackground
        
        detailInfoView.delegate = self
        setConstraints()
    }
    
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            detailInfoView.topAnchor.constraint(equalTo: view.topAnchor),
            detailInfoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            detailInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            detailInfoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
}
