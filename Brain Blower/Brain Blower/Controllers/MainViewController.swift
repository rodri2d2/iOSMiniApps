//
//  ViewController.swift
//  Brain Blower
//
//  Created by Rodrigo Candido on 15/10/2020.
//

import UIKit

class MainViewController: UIViewController {

    
    // MARK: -Set up View Controllers to TabBar
   let viewControllers = ViewControllersArray()

    
    lazy var tabViewController: UITabBarController = {
        let tabView = UITabBarController()
        tabView.setViewControllers(viewControllers.array(),
                                   animated: true)
        
        tabView.modalPresentationStyle = .fullScreen
        return tabView

    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        present(tabViewController, animated: true)
    }


}



// MARK: - Extension MainViewController to UITabBarControllerDelegate
extension MainViewController: UITabBarControllerDelegate{
    
}

