//
//  PWActivitiesTableView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 28.05.2023.
//

import UIKit


class PWActivitiesCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.backgroundColor = .theme.primaryBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsuported")
    }
    
    
}
