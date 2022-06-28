//
//  LoginViewController.swift
//  CaraLibroEP2
//
//  Created by Adolfo on 17/05/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction private func TapToCloseKeyboard(_ sender: UITapGestureRecognizer){
        self.view.endEditing(true)
    }

    @IBAction func LoginButtonAction(_ sender: Any) {
        if let email = emailTextField.text, let password =
            passwordTextField.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {
                (result, error) in
                
                if let result = result, error == nil{
                    let alertController2 = UIAlertController(title: "Aceptado", message: "Se ha logueado correctamente", preferredStyle: .alert)
                    alertController2.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController2, animated: true, completion: nil)
                    
                    
                    /*
                    let controller = HomeViewController()
                    self.navigationController?
                        .pushViewController(controller, animated: true)
                    */
                }else{
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
            }
        }
    }
    
    
}
