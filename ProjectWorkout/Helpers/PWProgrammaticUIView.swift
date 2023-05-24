//
//  PWProgrammaticUIView.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 24.05.2023.
//

import UIKit


/// This is used as a parent class as a helper for clean code arch. When it's called, constructors are called as well as two methods for basic view setup that they are called in super init from parent UIView class.
class PWProgrammaticUIView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        print("Called")
        self.setConfig()
        self.setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupsported")
    }
    
    public func setConfig() { }
    public func setConstraints() { }
}
