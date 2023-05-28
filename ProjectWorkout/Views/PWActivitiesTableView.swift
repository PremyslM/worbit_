//
//  PWActivitiesTableView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import UIKit


class PWActivitiesTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        self.backgroundColor = .theme.primaryBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsuported")
    }
    
    
}
