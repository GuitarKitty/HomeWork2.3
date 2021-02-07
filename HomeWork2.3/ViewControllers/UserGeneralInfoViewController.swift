//
//  UserGeneralInfoViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 07.02.2021.
//

import UIKit

class UserGeneralInfoViewController: UIViewController {
    @IBOutlet weak var nameOfUserLabel: UILabel!
    @IBOutlet weak var lastNameOfUserLabel: UILabel!
    @IBOutlet weak var patronymicOfUserLabel: UILabel!
    @IBOutlet weak var ageOfUserLabel: UILabel!
    @IBOutlet weak var cityOfUserLabel: UILabel!
    @IBOutlet weak var aboutOfUserLabel: UILabel!
    
    var nameOfUser: String!
    var lastNameOfUser: String!
    var patronymicOfUser: String!
    var ageOfUser: Int!
    var cityOfUser: String!
    var aboutOfUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameOfUserLabel.text = nameOfUser
        lastNameOfUserLabel.text = lastNameOfUser
        patronymicOfUserLabel.text = patronymicOfUser
        ageOfUserLabel.text = String(ageOfUser)
        cityOfUserLabel.text = cityOfUser
        aboutOfUserLabel.text = aboutOfUser
    }
    


}
