//
//  PWTrainingView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import UIKit


class PWTrainingStackView: PWProgrammaticUIView {
    
    private let vm = PWTrainingStackViewModel() // TODO: Create View Model for this (there you ll use TrainingManager)
    
    
    private lazy var daysStackView: UIStackView = {
        let _daysStackView: UIStackView = UIStackView()
        
        _daysStackView.axis = .vertical
        _daysStackView.spacing = 2        
        
        return _daysStackView
    }()
    
    
    override func setConfig() {
        self.addConstrainedSubViews(daysStackView)
        self.setTrainingCells()
    }
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            daysStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            daysStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            daysStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
    
    
    /**
     Sets up training cells for each day of the week.

     This method creates `PWTrainingViewCell` instances for each day of the week and sets their content. The training cells are added to the `daysStackView` as arranged subviews. The first cell has rounded corners on the top-right and top-left corners, while the last cell has rounded corners on the bottom-right and bottom-left corners. All other cells have square corners.
    */
    private func setTrainingCells() {
        for trainingDay in vm.trainingDaysArray {
            
            let newDay = PWTrainingViewCell()
            newDay.setContent(title: "\(vm.getDayNameFromString(trainingDay.formatedDate))", timeTitleLabel: trainingDay.training.avgTimeToCompleteString)
                        
            if trainingDay.date == vm.dateDaysArray[0] {
                newDay.layer.cornerRadius = 8
                newDay.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
                                                
                daysStackView.addArrangedSubview(newDay)
                                
            }
            else if trainingDay.date == vm.dateDaysArray.last {
                newDay.layer.cornerRadius = 8
                newDay.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner] // Bottom right corner, Bottom left corner
                daysStackView.addArrangedSubview(newDay)
            }
            else {
                daysStackView.addArrangedSubview(newDay)
            }
                        
            if trainingDay.date == vm.currentDay {                
                newDay.setInInfoCard(stackView: daysStackView, training: trainingDay.training)
            }
            
        }
        
    }
            
    
    
}
