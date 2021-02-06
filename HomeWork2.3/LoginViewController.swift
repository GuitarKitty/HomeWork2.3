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
    
    //MARK - Private properties
    private let userName = "User"
    private let userPassword = "Password"
    
    // MARK:  - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return}
        welcomeVC.userName = userName
    }
    
    //MARK: - IB Actions
    @IBAction func logInButtonPressed() {
        if userNameTextField.text != userName || passwordTextField.text != userPassword{
            showAllert(
                with: "Invaild User Name or Password",
                and: "Please, try again")
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNamePressed() {
        showAllert(with: "Forgot your User Name?",
                   and: "Your name is User 😼")
    }
    @IBAction func forgotPasswordButton() {
        showAllert(with: "Forgot your Password?",
                   and: "Your password is Password 😸")
    }
    
    @IBAction func unwindSegueToLoginScreen(segue: UIStoryboardSegue) {
        userNameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    // MARK:  - Alert Controller
    private func showAllert(with title: String?, and message: String? ) {
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
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    
}

