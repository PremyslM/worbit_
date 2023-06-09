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
        layout.itemSize = CGSize(width: 50, height: 50)
        
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
            exerciseTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            exerciseTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            exerciseTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            exerciseTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
        
    
}


extension PWExercisesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vc.unwrappedExercises.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIndentifiers.exercise.rawValue, for: indexPath) as? PWPrimaryCollectionViewCell else { fatalError() }
        cell.titleLabel.text = vc.unwrappedExercises[indexPath.row].name
        cell.iconImage.image = UIImage(systemName: "xmark")
        return cell
    }
    
    
}


extension PWExercisesViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.size.width * 0.45
        
        return CGSize(width: width, height: 100)
    }
    
}
