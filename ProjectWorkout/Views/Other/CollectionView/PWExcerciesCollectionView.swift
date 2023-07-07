//
//  PWExcerciesTableView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 27.05.2023.
//

import UIKit


class PWPrimaryCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.backgroundColor = .theme.primaryBackground        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unavalible")
    }
 
    
}
