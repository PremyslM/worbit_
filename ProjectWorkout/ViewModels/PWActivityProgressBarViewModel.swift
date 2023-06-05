//
//  PWActivityProgressBarViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 03.06.2023.
//

import Foundation
import UIKit

class PWActivityProgressBarViewModel {
        
    var delegate: PWActivityProgressBarDataSource?       
    
    public var progressValue: Float {
        return delegate!.setProgressValue()
    }
    public var imageIcon: UIImage {    
        return delegate!.setImageIcon()
    }
    
}
