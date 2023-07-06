//
//  DateManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 06.07.2023.
//

import Foundation


class DateManager {
    
    private let daysInWeek: [Date] = {
        let calendar = Calendar.current
        let today = Date()
        let weekday = calendar.component(.weekday, from: today)
        let weekdaysRange = calendar.range(of: .weekday, in: .weekOfYear, for: today)!
        
        let startDate = calendar.date(byAdding: .day, value: -weekday + 1, to: today)!
        let endDate = calendar.date(byAdding: .day, value: weekdaysRange.upperBound - weekday, to: today)!
        
        var datesInWeek: [Date] = []
        
        calendar.enumerateDates(startingAfter: startDate, matching: DateComponents(hour: 0, minute: 0, second: 0), matchingPolicy: .nextTimePreservingSmallerComponents) { (date, _, stop) in
            guard let date = date else { return }
            
            if date > endDate {
                stop = true
            } else {
                datesInWeek.append(date)
            }
        }
        
        return datesInWeek
    }()
    
    
    
    
}
