//
//  PWActivityProgressBarViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 03.06.2023.
//

import Foundation
import UIKit

class PWActivityProgressBarViewModel {
        
    var delegate: PWActivityProgressBarDataSource? {
        didSet {
            self.progressValue = delegate!.setProgressValue()
            self.imageIcon = delegate!.setImageIcon()
        }
    }        
    
    public var progressValue: Float? = nil
    public var imageIcon: UIImage? = nil
    
}
