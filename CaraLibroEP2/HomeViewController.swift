//
//  HomeViewController.swift
//  CaraLibroEP2
//
//  Created by Adolfo on 28/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
            
        
    }

    

}

extension HomeViewController{
    class func build() -> HomeViewController {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
        return controller ?? HomeViewController()
    }
}

