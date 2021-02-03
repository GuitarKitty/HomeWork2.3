//
//  WelcomeViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 02.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 5
    }
    
}
