//
//  PWActivitiesListVieController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


class PWActivitiesListViewController: UIViewController {
    
    private lazy var activitesTableView: PWActivitiesCollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize()
        
        let _activitesTableView = PWActivitiesCollectionView(frame: .zero, collectionViewLayout: layout)
        _activitesTableView.register(PWPrimaryCollectionViewCell.self, forCellWithReuseIdentifier: Constants.CellIndentifiers.activity.rawValue)
        return _activitesTableView
    }()
    
    private let vc = PWActivityViewViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConfig()
        setConstraints()
    }
    
    
    private func setConfig() {
        self.title = "Activities"
        self.view.addConstrainedSubViews(activitesTableView)
        
        activitesTableView.dataSource = self
        activitesTableView.delegate = self
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            activitesTableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20),
            activitesTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20),
            activitesTableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            activitesTableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
        ])
    }
    
    
}


extension PWActivitiesListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vc.userManger.user?.activityArray.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIndentifiers.activity.rawValue, for: indexPath) as? PWPrimaryCollectionViewCell else { fatalError() }
        cell.titleLabel.text = vc.userManger.user?.activityArray[indexPath.row].name
        return cell
    }
    
    
}


extension PWActivitiesListViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width * 0.45
        
        return CGSize(width: width, height: 100)
    }
    
}
