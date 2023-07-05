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
        let randomTraining = vm.randomTraining
        
        for day in vm.daysInWeek {
            let newDay = PWTrainingViewCell()
            newDay.setContent(title: day, timeTitleLabel: randomTraining.avgTimeToCompleteString)
                        
            if day == vm.daysInWeek[0] {
                newDay.layer.cornerRadius = 8
                newDay.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
                                                
                daysStackView.addArrangedSubview(newDay)
                
                // NOTE: Just for testing
                setInInfoCard(from: newDay, training: randomTraining)
            }
            else if day == vm.daysInWeek.last {
                newDay.layer.cornerRadius = 8
                newDay.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner] // Bottom right corner, Bottom left corner
                daysStackView.addArrangedSubview(newDay)
            }
            else {
                daysStackView.addArrangedSubview(newDay)
            }
            
        }
    }
    
    
    /**
     Sets up and adds an info card view below a parent view.

     - Parameters:
        - parent: The parent view below which the info card view will be added.

     This method creates a new `UIView` instance and adds it to the `daysStackView` as an arranged subview. The info card view has a gray background color and is constrained to the parent view using Auto Layout constraints.
     **/
    private func setInInfoCard(from parent: UIView, training: Training) {
        let infoView = PWTrainingInfoCardView()
        infoView.setTraining(training)
        infoView.backgroundColor = .gray
        infoView.setContent(difficulty: 3)
        infoView.translatesAutoresizingMaskIntoConstraints = false
        
        daysStackView.addArrangedSubview(infoView)
               
        NSLayoutConstraint.activate([
            infoView.topAnchor.constraint(equalTo: parent.bottomAnchor, constant: 10),
            infoView.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            infoView.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            infoView.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    
}
