//
//  PWExcerciesTableView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 27.05.2023.
//

import UIKit


class PWPrimaryCollectionView: UICollectionView {
    
    private lazy var layout: UICollectionViewFlowLayout = {
        let _layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        _layout.minimumLineSpacing = 30 // leadingAnchor of layout + trainlingAnchor of layout from parent view. 
        return _layout
    }()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        self.collectionViewLayout = self.layout // Overwriting the "layout" as attribute of this class
        self.backgroundColor = .theme.background
        self.showsVerticalScrollIndicator = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unavalible")
    }
 
    
}
