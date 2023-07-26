//
//  PWTrainingInfoCardView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import UIKit


class PWTrainingInfoCardView: PWProgrammaticUIView {
    
    let vm = PWTrainingInfoCardViewModel()
        
    private lazy var exercisesListLabel: UILabel = UILabel()
    private lazy var difficultyValueLabel: UILabel = UILabel()
        
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
        
        self.addConstrainedSubViews(exercisesListLabel, difficultyLabel, exercisesLabel, difficultyValueLabel)
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            exercisesLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            exercisesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            exercisesListLabel.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 3),
            exercisesListLabel.leadingAnchor.constraint(equalTo: exercisesLabel.leadingAnchor, constant: 10),
            
            difficultyValueLabel.leadingAnchor.constraint(equalTo: difficultyLabel.trailingAnchor, constant: 10),
            difficultyValueLabel.topAnchor.constraint(equalTo: difficultyLabel.topAnchor),
            
            difficultyLabel.topAnchor.constraint(equalTo: exercisesListLabel.bottomAnchor, constant: 10),
            difficultyLabel.leadingAnchor.constraint(equalTo: exercisesLabel.leadingAnchor),
        ])
    }
    
    
    public func setContent(difficulty: Int) {
        var exerciseListString: String = ""
        
        for (index, exercise) in vm.unwrappedTraining.exercises.enumerated() {
            exerciseListString += "\(index + 1). \(exercise.title)\n"
        }
        
        exercisesListLabel.text = "\(exerciseListString)"
        exercisesListLabel.font = .systemFont(ofSize: 12)
        
        difficultyValueLabel.text = "\(vm.unwrappedTraining.difficulty)"
        difficultyValueLabel.font = .systemFont(ofSize: 12)
    }
    
    
}


extension PWTrainingInfoCardView {
    
    func setTraining(_ training: Training) {
        vm.setTraining(training)
    }
    
    
}
