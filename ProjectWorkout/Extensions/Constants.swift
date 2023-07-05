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
    
    public static let trainings: [Training] = [
        Training(
            name: "Tréninkový plán 1",
            type: "Strength Training",
            duration: 3600, // 1 hodina
            difficulty: "Intermediate",
            focusAreas: ["Lower Body", "Upper Body", "Core"],
            description: "Tento tréninkový plán je zaměřen na posílení celého těla.",
            exercises: [
                Exercise(
                    name: "Dřepy",
                    sets: 3,
                    description: "Cvik zaměřený na posílení nohou a svalů zadku. Stůjte s nohama ve šířce ramen a pomalu se svažte dolů tak, aby vaše kolena byla ohnutá pod úhlem 90 stupňů. Potom se vraťte zpět nahoru. Opakujte.",
                    repetitions: 13,
                    restTime: 60,
                    averageTime: 36
                ),
                Exercise(
                    name: "Kliky",
                    sets: 4,
                    description: "Cvik pro posílení horní části těla, zejména hrudníku, ramen a tricepsů. Lehněte si na zem s dlaněmi opřenými o podlahu ve šířce ramen. Pomalu se spusťte dolů, ohněte lokty, dokud nejsou v pravém úhlu, a potom se vraťte zpět nahoru. Opakujte.",
                    repetitions: 10,
                    restTime: 60,
                    averageTime: 27
                ),
                Exercise(
                    name: "Výpady",
                    sets: 3,
                    description: "Cvik pro posílení nohou a svalů hýždí. Postavte se rovně s nohama ve šířce ramen. Udeřte jednou nohou dopředu tak, aby byl vaši koleno ohnuté pod úhlem 90 stupňů, zatímco vaše druhá noha zůstává vzadu. Potom se vraťte zpět nahoru a opakujte s druhou nohou.",
                    repetitions: 8,
                    restTime: 90,
                    averageTime: 71
                ),
            ],
            restDays: 2
        ),
        Training(
            name: "Tréninkový plán 2",
            type: "Strength Training",
            duration: 3600, // 1 hodina
            difficulty: "Intermediate",
            focusAreas: ["Lower Body", "Upper Body", "Core"],
            description: "Tento tréninkový plán je zaměřen na posílení celého těla.",
            exercises: [
                Exercise(
                    name: "Výpady s výskokem",
                    sets: 3,
                    description: "Cvik pro posílení nohou a svalů hýždí. Postavte se rovně s nohama ve šířce ramen. Udělejte výpady tak, že se jednou nohou vystřelíte dopředu a při návratu se odrazíte do výskoku. Opakujte s druhou nohou.",
                    repetitions: 10,
                    restTime: 60,
                    averageTime: 40
                ),
                Exercise(
                    name: "Stoupání po schodech",
                    sets: 4,
                    description: "Cvik pro posílení dolních končetin a kardiovaskulární kondici. Najděte si schody a stoupněte na první stupeň. Potom postupně vystoupejte na vyšší stupně, při každém kroku ohýbáte nohy a zvedáte tělo vzhůru. Sestupte zpět a opakujte.",
                    repetitions: 15,
                    restTime: 30,
                    averageTime: 15
                ),
                Exercise(
                    name: "Výpony na špičky",
                    sets: 3,
                    description: "Cvik pro posílení lýtek. Stoupněte si rovně s nohama ve šířce ramen a zvedněte se na špičky nohou. Potom se pomalu vraťte dolů. Opakujte.",
                    repetitions: 12,
                    restTime: 45,
                    averageTime: 20
                ),
            ],
            restDays: 2
        ),
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
