//
//  PWExercisesViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 27.05.2023.
//

import UIKit


final class PWExercisesViewController: UIViewController {
    
    private var vc = PWExerciseViewViewModel()
    
    private lazy var exerciseTableView: PWPrimaryCollectionView = {
        let layout = UICollectionViewFlowLayout()
        let _exerciseTableView = PWPrimaryCollectionView(frame: .zero, collectionViewLayout: layout)
        
        _exerciseTableView.register(PWPrimaryCollectionViewCell.self, forCellWithReuseIdentifier: Constants.CellIndentifiers.exercise.rawValue)
        
        return _exerciseTableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Exercises"
        
        exerciseTableView.delegate = self
        exerciseTableView.dataSource = self
        
        self.view.addConstrainedSubViews(exerciseTableView)    
        
        NSLayoutConstraint.activate([
            exerciseTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            exerciseTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            exerciseTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            exerciseTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
        ])
    }
        
    
}


extension PWExercisesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vc.unwrappedExercises.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIndentifiers.exercise.rawValue, for: indexPath) as? PWPrimaryCollectionViewCell else { fatalError() }
        let exercise = vc.unwrappedExercises[indexPath.row]
        
        cell.setExercise(
            title: exercise.title,
            image: "smallcircle.filled.circle.fill",
            description: "none"//exercise.desc ?? ""
        )
        
        return cell
    }
    
    
}


extension PWExercisesViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width
        
        return CGSize(width: width, height: 100)
    }
    
}
