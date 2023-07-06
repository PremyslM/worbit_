//
//  PWTrainingInfoCardViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 05.07.2023.
//

import Foundation


class PWTrainingInfoCardViewModel {
    
    private var training: Training?
           
    public var unwrappedTraining: Training {
        guard let training = training else { fatalError() }
        return training
    }
    
    public func setTraining(_ training: Training) {
        self.training = training
    }
    
    
}
