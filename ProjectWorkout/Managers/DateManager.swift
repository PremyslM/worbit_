//
//  DateManager.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 06.07.2023.
//

import Foundation


class DateManager {
    
    public let daysInWeek: [Date] = {
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
                let dateWithoutTime = calendar.startOfDay(for: date)
                datesInWeek.append(dateWithoutTime)
            }
        }
        
        return datesInWeek
    }()
    
    public let currentDay: Date = {
        let calendar = Calendar.current
        let currentDate = Date()
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: currentDate)
        return calendar.date(from: dateComponents)!        
    }()
    
    public func formatDateToString(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
    public func getDayNameFromString(dateString: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        if let date = dateFormatter.date(from: dateString) {
            let dayFormatter = DateFormatter()
            dayFormatter.dateFormat = "EEE"
            return dayFormatter.string(from: date)
        }
        return nil
    }
    
    
}
