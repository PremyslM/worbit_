//
//  PWTrainingInfoCardView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import UIKit


class PWTrainingInfoCardView: PWProgrammaticUIView {
    
    let exercises = DataManager.getActivities //PWExerciseViewViewModel().unwrappedExercises
        
    private lazy var exercisesListLabel: UILabel = UILabel()
        
    private lazy var difficultyLabel: UILabel = {
        let _difficultyLabel: UILabel = UILabel()
        
        _difficultyLabel.text = "Dificulty"
        _difficultyLabel.font = .systemFont(ofSize: 10, weight: .thin)
        
        return _difficultyLabel
    }()
    
    private lazy var exercisesLabel: UILabel = {
        let _exercisesLabel: UILabel = UILabel()
        
        _exercisesLabel.text = "Exercises"
        _exercisesLabel.font = .systemFont(ofSize: 10, weight: .thin)
        
        return _exercisesLabel
    }()
    
    
    override func setConfig() {
        self.backgroundColor = .gray
        
        exercisesListLabel.numberOfLines = 3
        
        self.addConstrainedSubViews(exercisesListLabel, difficultyLabel, exercisesLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            exercisesLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            exercisesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            exercisesListLabel.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 3),
            exercisesListLabel.leadingAnchor.constraint(equalTo: exercisesLabel.leadingAnchor, constant: 10),
            
            difficultyLabel.topAnchor.constraint(equalTo: exercisesListLabel.bottomAnchor, constant: 10),
            difficultyLabel.leadingAnchor.constraint(equalTo: exercisesLabel.leadingAnchor),
        ])
    }
    
    
    public func setContent(difficulty: Int) {
        var exerciseListString: String = ""
        
        print(exercises.count)
        
        for exercise in exercises {
            exerciseListString += "\(exercise.name ?? "[X]")\n"
        }
        
        exercisesListLabel.text = "\(exerciseListString)"
        exercisesListLabel.font = .systemFont(ofSize: 15)
    }
    
    
}
