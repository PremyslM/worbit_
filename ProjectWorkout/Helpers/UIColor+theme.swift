//
//  UIColor+theme.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


extension UIColor {
    
    static let theme: PWTheme = PWTheme()
    
    struct PWTheme {
        
        let primaryBackground = UIColor(named: "primaryBackground")
        let primaryWhite = UIColor(named: "primaryWhite")
        let secondaryWhite = UIColor(named: "secondaryWhite")
    }
    
    
}
