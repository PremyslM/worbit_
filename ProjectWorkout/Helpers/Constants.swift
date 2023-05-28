//
//  Constants.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


struct Constants {
        
    struct PWTheme {
        let primaryBackground = UIColor(named: "primaryBackground")
        let primaryWhite = UIColor(named: "primaryWhite")
        let secondaryWhite = UIColor(named: "secondaryWhite")
        
        struct ActivityTheme {
            let acYellow = UIColor.systemYellow
            let acGreen = UIColor.systemGreen
            let acRed = UIColor.systemRed
        }
    }
    
    public static let activityStrings: [String] = ["figure.run", "figure.badminton", "figure.outdoor.cycle"]
        
    enum APIKeys: String {
        case apiNinjas = "TgwU+c9ajNCNOn3fX6AqNw==pSiuFqEeVY4vMQ11"
    }
    
    enum Endpoints: String {
        case exercises = "https://api.api-ninjas.com/v1/exercises?muscle=lats"
    }
    
    
}
