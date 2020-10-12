//
//  ViewController.swift
//  Color Touches
//
//  Created by Rodrigo Candido on 12/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    // MARK: - RGB Colors
    var redIntensity:       CGFloat = 0
    var greenIntensity:     CGFloat = 0
    var blueIntensity:      CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        redIntensity = redIntensity + 0.01
        print(redIntensity)
        view.backgroundColor = UIColor(displayP3Red: redIntensity, green: greenIntensity, blue: blueIntensity, alpha: 1)
        
    }
    
}

