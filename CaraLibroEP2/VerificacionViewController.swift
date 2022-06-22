//
//  VerificacionViewController.swift
//  CaraLibroEP2
//
//  Created by Adolfo on 21/06/22.
//

import UIKit

class VerificacionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
            
        
    }

    

}

extension VerificacionViewController{
    class func build() -> VerificacionViewController {
        let storyboard = UIStoryboard(name: "Verificacion", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "VerificacionViewController") as? VerificacionViewController
        return controller ?? VerificacionViewController()
    }
}
