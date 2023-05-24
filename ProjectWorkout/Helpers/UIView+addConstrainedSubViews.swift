//
//  UIView+addConstrainedSubViews.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit


extension UIView {
    
    /// This method adding multiple 'views' as a subview into parent UIView class or subclass
    public func addConstrainedSubViews(_ views: UIView...) {
        views.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(view)
        }
    }
    
}
