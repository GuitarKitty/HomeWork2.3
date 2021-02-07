//
//  UserLastPlaceOfWorkViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 07.02.2021.
//

import UIKit

class UserLastPlaceOfWorkViewController: UIViewController {
    @IBOutlet weak var userWorkCompanyNameLabel: UILabel!
    @IBOutlet weak var userRoleInWorkCompany: UILabel!
    @IBOutlet weak var yearsOfUserInCompany: UILabel!
    
    var companyName: String!
    var roleInCompany: String!
    var yearsInCompany: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        userWorkCompanyNameLabel.text = companyName
        userRoleInWorkCompany.text = roleInCompany
        yearsOfUserInCompany.text = yearsInCompany

    }

}
