//
//  PWActivityProgressBarViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 03.06.2023.
//

import Foundation
import UIKit

class PWActivityProgressBarViewModel {
        
    /// Delegate (data-source) attribute
    var delegate: PWActivityProgressBarDataSource?
    
    /// Value of current probress
    public var progressValue: Float {
        return delegate!.setProgressValue()
    }
    
    /// Image (system image) of current activity
    public var imageIcon: UIImage {
        return delegate!.setImageIcon()
    }
    
}
