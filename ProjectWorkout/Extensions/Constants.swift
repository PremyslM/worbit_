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
    
    public static let daysInWeek: [String] = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    
    public static let activityStrings: [String] = ["figure.run", "figure.badminton", "figure.outdoor.cycle"]
    
    public static let activitiesArray: [Activities: PWActivity] = [
        .running: PWActivity(name: "Běh", systemImage: "figure.run", accuracy: 0.89),
        .swiming: PWActivity(name: "Plavání", systemImage: "figure.pool.swim", accuracy: 0.76),
        .cycling: PWActivity(name: "Cyklistika", systemImage: "figure.outdoor.cycle", accuracy: 0.34),
        .golf: PWActivity(name: "Golf", systemImage: "figure.golf", accuracy: 0.56),
        .strenghtExercise: PWActivity(name: "Silové cvičení", systemImage: "figure.strengthtraining.traditional", accuracy: 0.23),
        .hiking: PWActivity(name: "Turistika", systemImage: "figure.hiking", accuracy: 0.23),
    ]    
    
    enum Activities {
        case running
        case cycling
        case swiming
        case golf
        case strenghtExercise
        case hiking
    }
    
    enum APIKeys: String {
        case apiNinjas = "TgwU+c9ajNCNOn3fX6AqNw==pSiuFqEeVY4vMQ11"
    }
    
    enum Endpoints: String {
        case exercises = "https://api.api-ninjas.com/v1/exercises?muscle=lats"
    }
    
    enum CellIndentifiers: String {
        case activity = "activityCell"
        case exercise = "exerciseCell"
    }
    
}
