//
//  MemoryViewController.swift
//  Brain Blower
//
//  Created by Rodrigo Candido on 15/10/2020.
//

import UIKit

class MemoryViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()


        self.view.backgroundColor = .systemTeal
        tabBarItem.title = "Memory"
        tabBarItem.image = UIImage(systemName: "square.and.arrow.down.on.square")
        tabBarItem.selectedImage = UIImage(systemName: "square.and.arrow.down.on.square.fill")

    }
    


}
