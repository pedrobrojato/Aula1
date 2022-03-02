//
//  ViewController.swift
//  Aula1
//
//  Created by Dafle on 25/02/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    var email = ""
    var password = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordField.isSecureTextEntry = true
        
    }
    
    
    @IBAction func didTapLogin(_ sender: Any) {
        if emailField.text == "" {
            
            showAlert(text: "Digite seu email.")
            
        } else if passwordField.text == "" {
            
            showAlert(text: "Digite sua senha")
        }
        
        
        if emailField.text == "pedro" && passwordField.text == "pedro" {
            goToHome()
            
        } else {
            showAlert(text: "Email ou Senha incorretos")
        }
    }

    func goToHome() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVc = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        navigationController?.pushViewController(homeVc, animated: true)
    }
    
    func showAlert(text: String) {
        let alert = UIAlertController(title: "Atencao", message: text, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}


