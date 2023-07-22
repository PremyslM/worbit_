//
//  Constants.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


struct Constants {
    
    struct Title {
        static let dailyProgress = "DAILY\nPROGRESS"
    }
    
    struct PWTheme {
        let background = UIColor(named: "primaryBackground")
        let lightGray = UIColor(named: "lightGray")
        let gray = UIColor(named: "gray")
        let darkGray = UIColor(named: "darkGray")
        let accent = UIColor(named: "accent")
        
        struct ActivityTheme {
            let acYellow = UIColor.systemYellow
            let acGreen = UIColor.systemGreen
            let acRed = UIColor.systemRed
        }
    }
    
    public static let daysInWeek: [String] = [
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat",
        "Sun"
    ]
    
    public static let activityStrings: [String] = [
        "figure.run",
        "figure.badminton",
        "figure.outdoor.cycle"
    ]
    
    public static let activitiesArray: [Activities: PWActivity] = [
        .running: PWActivity(name: "Běh", systemImage: "figure.run", accuracy: 0.89),
        .swiming: PWActivity(name: "Plavání", systemImage: "figure.pool.swim", accuracy: 0.76),
        .cycling: PWActivity(name: "Cyklistika", systemImage: "figure.outdoor.cycle", accuracy: 0.34),
        .golf: PWActivity(name: "Golf", systemImage: "figure.golf", accuracy: 0.56),
        .strenghtExercise: PWActivity(name: "Silové cvičení", systemImage: "figure.strengthtraining.traditional", accuracy: 0.23),
        .hiking: PWActivity(name: "Turistika", systemImage: "figure.hiking", accuracy: 0.23),
    ]
    
    public static let exerciseHeaders = [
        "X-Api-Key": Constants.APIKeys.apiNinjas.rawValue,
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
    
    struct Endpoints {
        static let list: [String] = [
            "http://172.20.10.2:5000",
            "http://192.168.1.25:5000",
            "http://192.168.2.194:5000"
        ]
    }
    
    enum CellIndentifiers: String {
        case activity = "activityCell"
        case exercise = "exerciseCell"
    }
    
}
