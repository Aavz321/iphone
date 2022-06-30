//
//  RecuperarViewController.swift
//  CaraLibroEP2
//
//  Created by Adolfo on 29/06/22.
//

import UIKit
import Firebase

class RecuperarViewController: UIViewController{
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction private func TapToCloseKeyboard(_ sender: UITapGestureRecognizer){
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgotPassButton_Tapped(_ sender: Any){
        let auth = Auth.auth()
        
        auth.sendPasswordReset(withEmail: emailTextField.text!) { (error) in
            if let error = error {
                let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
            
                self.present(alertController, animated: true, completion: nil)
            }
            let alertController = UIAlertController(title: "Correo enviado", message: "El correo de verificación se envió correctamente, revisa tu apartado de spam!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
        
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
}
