//
//  PWActivityProgressBarDataSource.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 04.06.2023.
//

import Foundation
import UIKit


protocol PWActivityProgressBarDataSource {
    func setProgressValue() -> Float
    func setImageIcon() -> UIImage
}
