//
//  PWActivityProgressBarViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 03.06.2023.
//

import Foundation

protocol PWActivityProgressBarDataSource {
    func setProgressValue() -> Float
}


class PWActivityProgressBarViewModel {
        
    var delegate: PWActivityProgressBarDataSource? {
        didSet {
            progressValue = delegate!.setProgressValue()
        }
    }        
    
    var progressValue: Float? = nil
    
}
