//
//  WOTimelineView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 14.07.2023.
//

import Foundation


class WOTimelineViewModel {
    
    public var trainingDay: TrainingDay?

    
    init() {
        fetchData()
    }
    
    
    private func fetchData() {
        self.trainingDay = TestData.trainingDay
    }
    
    
}
