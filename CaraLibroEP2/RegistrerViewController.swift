//
//  RegistrerViewController.swift
//  CaraLibroEP2
//
//  Created by Darwin Zegarra on 18/05/22.
//

import UIKit
import FirebaseAnalytics
import FirebaseAuth

class RegistrarViewController:UIViewController{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBAction private func TapToCloseKeyboard(_ sender: UITapGestureRecognizer){
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Autenticación"
        
        Analytics.logEvent("InitScreen", parameters: ["message":"Integración de Firebase completa"])
        
    }
    
    
    @IBAction func SignUpButtonAction(_ sender: Any) {
        if let email = emailTextField.text, let password =
            passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) {
                (result, error) in
                
                if let result = result, error == nil{
                    let alertController2 = UIAlertController(title: "Registrado", message: "Se ha registrado correctamente", preferredStyle: .alert)
                    alertController2.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController2, animated: true, completion: nil)
                }else{
                    let alertController = UIAlertController(title: "Error", message: "Se ha producido un error registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
            }
        }
    }
}
