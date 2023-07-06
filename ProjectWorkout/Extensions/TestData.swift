//
//  TestData.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 02.07.2023.
//

import Foundation


class TestData {
    
    /// Hardcore Test User
    ///
    /// Warning:
    /// >   - This is our test user.
    /// >   - Just for testing purpuses !
    static let currentUser: User = {
        let _user = User(context: DataManager.shared.persistentContainer.viewContext)
        _user.name = "Jon Doe"
        _user.exercise = DataManager.activitiesSet
        
        return _user
    }()
    
    static let currentDay: String = Constants.daysInWeek[4]
    
    /// Hardcore Test Training
    ///
    /// Warning:
    /// >   - This is our test user.
    /// >   - Just for testing purpuses !
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
        Training(
            name: "Tréninkový plán 3",
            type: "Cardio Training",
            duration: 2400, // 40 minut
            difficulty: "Beginner",
            focusAreas: ["Cardiovascular", "Full Body"],
            description: "Tento tréninkový plán je zaměřen na zlepšení kardiovaskulární kondice a posílení celého těla.",
            exercises: [
                Exercise(
                    name: "Běh na místě",
                    sets: 3,
                    description: "Běžte na místě s vysokými koleny, přičemž se snažte zvednout kolena co nejvíce vysoko. Udržujte tempo a pokračujte po dobu stanoveného času.",
                    repetitions: 60,
                    restTime: 30,
                    averageTime: 45
                ),
                Exercise(
                    name: "Skákání přes švihadlo",
                    sets: 4,
                    description: "Skákejte přes švihadlo, přičemž se snažte udržet rovnoměrné tempo a přeskakovat švihadlo jednou za jednou nohou. Pokračujte po dobu stanoveného času.",
                    repetitions: 30,
                    restTime: 60,
                    averageTime: 20
                ),
                Exercise(
                    name: "Burpees",
                    sets: 3,
                    description: "Začněte ve stoje. Poté se rychle spusťte dolů do dřepu, položte ruce na zem a zaskočte nohama dozadu, abyste se dostali do pozice kliku. Potom skočte nohama zpět dopředu, abyste se vrátili do dřepu, a skočte vzhůru do vzduchu s rukama nad hlavou. Opakujte.",
                    repetitions: 12,
                    restTime: 45,
                    averageTime: 30
                ),
            ],
            restDays: 1
        )
    ]
    
    
}
