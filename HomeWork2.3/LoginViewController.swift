//
//  ViewController.swift
//  HomeWork2.3
//
//  Created by Admin on 02.02.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 5
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func logInButtonPressed() {
        if userNameTextField.text != "User" || passwordTextField.text != "Password"{
            passwordTextField.text?.removeAll()
            showAllert(with: "Invaild User Name or Password",and: "Please, try again")
          }
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        showAllert(with: "Forgot your User Name?", and: "Your name is User 😼")
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        showAllert(with: "Forgot your Password?", and: "Your password is Password 😸")
    }
    
    @IBAction func unwindSegueToLoginScreen (segue: UIStoryboardSegue){
        userNameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTextField.becomeFirstResponder()
        if textField == passwordTextField{
            logInButtonPressed()
        }
        return true
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
            
    
    
    
    
// MARK:  - Navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let welcomeVC = segue.destination as? WelcomeViewController else { return}
       welcomeVC.userName = userNameTextField.text
       
   }
    
    
    
    
    
// MARK:  - Alert Controller
    private func showAllert(with title: String?, and message: String? ){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOkButton = UIAlertAction(title: "OK",
                                          style: .default)
                                          { _ in self.userNameTextField.text = ""}
        alert.addAction(alertOkButton)
        present(alert, animated: true)
    
        
    }
}

