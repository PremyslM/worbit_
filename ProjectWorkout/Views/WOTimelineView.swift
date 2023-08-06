//
//  WOTimelineView.swift
//  Wobit
//
//  Created by Přemysl Mikulenka on 12.07.2023.
//

import UIKit


class WOTimelineView: PWProgrammaticUIView {
        
    private let viewModel: WOTimelineViewModel = WOTimelineViewModel()
    
    // MARK: - Views
 
    private lazy var vLineView: UIView = {
        let _vLineView = UIView()
                
        _vLineView.backgroundColor = .theme.darkGray
        
        return _vLineView
    }()
    
    private lazy var singleTrainingView: UIView = {
        let _singleTrainingView: UIView = UIView()
        
        return _singleTrainingView
    }()
    
    
    // MARK: - Layout Config
    
    override func setConfig() {
        self.addConstrainedSubViews(vLineView)
    }
    
    override func setConstraints() {
        
        NSLayoutConstraint.activate([
            vLineView.topAnchor.constraint(equalTo: self.topAnchor),
            vLineView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            vLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 50),
            vLineView.widthAnchor.constraint(equalToConstant: 2),
            vLineView.heightAnchor.constraint(equalToConstant: 275),
        ])
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.setTimeLine()
        }
                        
    }
    
    /**
     Sets up the timeline for displaying training exercises and their respective times.

     This private function is responsible for creating and positioning UILabels and UIViews to display the training exercises and their scheduled times on the view.

     - Note: This function assumes that the `viewModel` property of the class contains a valid array of `Exercise` objects in `unwrappedExercises`.

     - Warning: The function currently uses hardcoded data for the timeLabel text. It is recommended to replace this with actual schedule data for the current training day.

     - Author: Přemysl Mikulenka

     - Version: 1.0

     - Date: 22-07-2023

     - Returns: Void

     - SeeAlso: `Exercise`, `viewModel`

     - Todo: Replace hardcoded time data with actual schedule data.
     */
    private func setTimeLine() {
        // Enumerate through the exercises to display them in the timeline.
        viewModel.unwrappedExercises.enumerated().forEach { index, exercise in
            // Create a UILabel for displaying the exercise title.
            let trainingLabel: UILabel = UILabel()
            trainingLabel.text = exercise.title
            trainingLabel.textColor = .theme.accent
            
            // Create a UILabel for displaying the exercise time.
            let timeLabel: UILabel = UILabel()
            timeLabel.textColor = .theme.darkGray
            timeLabel.text = "\(exercise.avgTime):00" // TODO: Don't use hardcoded data, instead use schedule data for the current training day schedule.
            
            // Create a horizontal line view to separate exercise entries.
            let hLineView: UIView = UIView()
            hLineView.backgroundColor = .theme.gray
            
            // If the exercise is not the first one in the list, reduce its alpha to indicate it's not the current exercise.
            if index != 0 {
                trainingLabel.alpha = 0.35
                timeLabel.alpha = 0.35
                hLineView.alpha = 0.35
            }
            
            // Position and add the views to the timeline.
            if index < 4 {
                self.addConstrainedSubViews(trainingLabel, hLineView, timeLabel)
                
                NSLayoutConstraint.activate([
                    // Constraints for the horizontal line view.
                    hLineView.topAnchor.constraint(equalTo: vLineView.topAnchor, constant: CGFloat(Double((index * 55)) + 27.5)),
                    hLineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                    hLineView.widthAnchor.constraint(equalToConstant: 300),
                    hLineView.heightAnchor.constraint(equalToConstant: 1.5),
                    
                    // Constraints for the training label.
                    trainingLabel.bottomAnchor.constraint(equalTo: hLineView.topAnchor),
                    trainingLabel.leadingAnchor.constraint(equalTo: vLineView.trailingAnchor, constant: 10),
                    
                    // Constraints for the time label.
                    timeLabel.trailingAnchor.constraint(equalTo: vLineView.leadingAnchor, constant: -5),
                    timeLabel.bottomAnchor.constraint(equalTo: hLineView.topAnchor, constant: -5),
                ])
            } else {
                // If there are more than 3 exercises, display an ellipsis (...) to indicate that there are more exercises not shown.
                trainingLabel.text = "..."
                
                // Add only the training label (ellipsis) to the timeline.
                self.addConstrainedSubViews(trainingLabel)
                
                NSLayoutConstraint.activate([
                    // Constraints for the ellipsis label.
                    trainingLabel.leadingAnchor.constraint(equalTo: self.vLineView.trailingAnchor, constant: 20),
                    trainingLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
                ])
            }
        }
    }

    
    
}
