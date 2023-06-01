//
//  PWActivitiesListVieController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


class PWActivitiesListViewController: UIViewController {
    
    private lazy var activitesTableView: PWActivitiesTableView = {
        let _activitesTableView = PWActivitiesTableView()
        _activitesTableView.register(UITableViewCell.self, forCellReuseIdentifier: Constants.CellIndentifiers.activity.rawValue)
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


extension PWActivitiesListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vc.userManger.user?.activityArray.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIndentifiers.activity.rawValue, for: indexPath)
        cell.textLabel?.text = "\(vc.userManger.user?.activityArray[indexPath.row].name ?? "Unknown")"
        
        return cell
    }
            
    
}
