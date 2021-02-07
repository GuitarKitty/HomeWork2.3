//
//  WelcomeViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 02.02.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var userFirstName: String!
    var userLastName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, " + userFirstName + " " + userLastName
        
    }
}
