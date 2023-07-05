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
    private lazy var difficultyLabel: UILabel = UILabel()
    
    override func setConfig() {
        self.backgroundColor = .gray
        
        exercisesListLabel.numberOfLines = 3
        
        self.addConstrainedSubViews(exercisesListLabel, difficultyLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            exercisesListLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            exercisesListLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            difficultyLabel.topAnchor.constraint(equalTo: exercisesListLabel.bottomAnchor, constant: 10),
            difficultyLabel.leadingAnchor.constraint(equalTo: exercisesListLabel.leadingAnchor),
        ])
    }
    
    
    public func setContent(difficulty: Int) {
        var exerciseListString: String = ""
        
        print(exercises.count)
        
        for exercise in exercises {
            exerciseListString += "\(exercise.name ?? "[X]")\n"
        }
        
        exercisesListLabel.text = "Exercises:\n\(exerciseListString)"
        difficultyLabel.text = "Difficulty: \(difficulty)"
    }
    
    
}
