//
//  UserSkillsViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 07.02.2021.
//

import UIKit

class UserSkillsViewController: UIViewController {
    @IBOutlet weak var userSkilldSegmentControl: UISegmentedControl!
    @IBOutlet weak var userSkillsLabel: UILabel!
    
    var userMajorSkill: String!
    var userMinorSkill: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userSkillsLabel.text = userMinorSkill
        userSkillsLabel.text = userMajorSkill
    }
    
    @IBAction func userSkillsSegment() {
        if userSkilldSegmentControl.selectedSegmentIndex == 0 {
            userSkillsLabel.text = userMajorSkill
        }else if userSkilldSegmentControl.selectedSegmentIndex == 1 {
            userSkillsLabel.text = userMinorSkill
        }
    }
    

}
    
  


