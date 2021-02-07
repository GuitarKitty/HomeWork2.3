//
//  ViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 02.02.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
 
    // MARK:  - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let tabBarController = segue.destination as! UITabBarController
    let viewControllers = tabBarController.viewControllers
        for viewController in viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController{
                welcomeVC.userFirstName = UserGeneralInfo.getUserGeneralInfo().name
                welcomeVC.userLastName = UserGeneralInfo.getUserGeneralInfo().lastName
            }else if let user1GIVC = viewController as? UserGeneralInfoViewController {
                user1GIVC.nameOfUser = UserGeneralInfo.getUserGeneralInfo().name
                user1GIVC.lastNameOfUser = UserGeneralInfo.getUserGeneralInfo().lastName
                user1GIVC.patronymicOfUser = UserGeneralInfo.getUserGeneralInfo().patronymic
                user1GIVC.ageOfUser = UserGeneralInfo.getUserGeneralInfo().age
                user1GIVC.cityOfUser = UserGeneralInfo.getUserGeneralInfo().city
                user1GIVC.aboutOfUser = UserGeneralInfo.getUserGeneralInfo().about
            }
            else if let user1LPOFWVC = viewController as? UserLastPlaceOfWorkViewController{
                user1LPOFWVC.companyName = UserWorkCompany.getUserWorkCompany().companyName
                user1LPOFWVC.roleInCompany = UserWorkCompany.getUserWorkCompany().roleInCompany
                user1LPOFWVC.yearsInCompany = UserWorkCompany.getUserWorkCompany().yearsInCompany
            }else if let user1SVC = viewController as? UserSkillsViewController{
                user1SVC.userMajorSkill = UserSkills.getUserSkills().majorSkill
                user1SVC.userMinorSkill = UserSkills.getUserSkills().minorSkill
            }
        }
    }
    
    //MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        if
            userNameTextField.text != UserData.getUserData().userName ||
            passwordTextField.text != UserData.getUserData().userPassword{
            showAllert(title: "Invaild User Name or Password",
                       message: "Please, try again")
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNamePressed() {
        showAllert(title: "Forgot your User Name?",
                   message: "Your name is User 😼")
    }
    
    @IBAction func forgotPasswordButton() {
        showAllert(title: "Forgot your Password?",
                   message: "Your password is Password 😸")
    }
    
    @IBAction func unwindSegueToLoginScreen(segue: UIStoryboardSegue) {
        userNameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    // MARK:  - Alert Controller
    private func showAllert(title: String?, message: String? ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOkButton = UIAlertAction(title: "OK",style: .default) { _ in self.passwordTextField.text = nil}
        alert.addAction(alertOkButton)
        present(alert, animated: true)
    }
    
    //MARK: - Work with keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTextField.becomeFirstResponder()
            if textField == userNameTextField{
                passwordTextField.becomeFirstResponder()
            }else{
                logInButtonPressed()
            }
            return true
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    
}

