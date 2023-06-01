//
//  PWExercisesViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 27.05.2023.
//

import UIKit


final class PWExercisesViewController: UIViewController {
    
    private var vc = PWExerciseViewViewModel()
    
    
    private lazy var exerciseTableView: PWExercisesTabeView = {
        let _exerciseTableView = PWExercisesTabeView()
        _exerciseTableView.register(UITableViewCell.self, forCellReuseIdentifier: Constants.CellIndentifiers.exercise.rawValue)
        
        return _exerciseTableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Exercises"
        
        exerciseTableView.delegate = self
        exerciseTableView.dataSource = self
        
        self.view.addConstrainedSubViews(exerciseTableView)    
        
        NSLayoutConstraint.activate([
            exerciseTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            exerciseTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            exerciseTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            exerciseTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
        
    
}


extension PWExercisesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vc.unwrappedExercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIndentifiers.exercise.rawValue, for: indexPath)
        cell.textLabel?.text = "\(vc.unwrappedExercises[indexPath.row].name!)"
        
        return cell
    }
    
    
}
