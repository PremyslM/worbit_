//
//  PWActivityDetailViewModel.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 02.07.2023.
//

import Foundation


class PWActivityDetailViewModel {
    
    var dataSource: PWActivityDetailDataSource? {
        didSet {                        
            self.activity = dataSource?.getActvity()
        }
    }
    
    var activity: Activity?
    
    
}
