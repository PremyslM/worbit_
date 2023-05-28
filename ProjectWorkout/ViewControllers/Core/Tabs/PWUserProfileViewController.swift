//
//  PWUserProfileViewController.swift
//  ProjectWorkout
//
//  Created by Přemysl Mikulenka on 25.05.2023.
//

import UIKit


final class PWUserProfileViewController: UIViewController {
    
    private let vc = PWUserProfileViewViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = vc.userManager.user?.name
    }
    
    
}
