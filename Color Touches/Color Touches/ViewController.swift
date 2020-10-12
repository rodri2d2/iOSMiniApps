//
//  ViewController.swift
//  Color Touches
//
//  Created by Rodrigo Candido on 12/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var touchViews      = [UITouch: TouchSpotView]()
    var touchPositions  = [UITouch: CGFloat]()
    let newView         = TouchSpotView()
    
    // MARK: - RGB Intensities
    var redColoIntensity:   CGFloat = 0
    var greenColoIntensity: CGFloat = 0
    var blueColoIntensity:  CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.isMultipleTouchEnabled = true
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        for touch in touches {
            createViewForTouch(touch: touch)
            touchPositions[touch] = touch.location(in: self.view).y
       
        }
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            let touchedView = viewForTouch(touch: touch)
            
            // Move the view to the new location.
            let newLocation = touch.location(in: self.view)
                touchedView?.center = newLocation
            
            
            if let index = getTouchDictionaryPosition(touch: touch){
            
                switch index {
                case 0:
                    redIntensity(for: touch)
                case 1:
                    greenIntensity(for: touch)
                case 2:
                    blueIntensity(for: touch)
                default:
                    return
                }
                
            }

        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            removeViewForTouch(touch: touch)
        }
    }
    
    
    // MARK: - Create a View for Touch
    func createViewForTouch( touch : UITouch ) {
        
        //Set up the circle view for each touch
        newView.bounds = CGRect(x: 0, y: 0, width: 1, height: 1)
        newView.center = touch.location(in: self.view)
        
        // Adding the view and animated it
        self.view.addSubview(newView)
        UIView.animate(withDuration: 0.2) {
            self.newView.bounds.size = CGSize(width: 100, height: 100)
        }
        
        //Add the view to the dictionary
        touchViews[touch] = newView
       

    }
    
    func viewForTouch (touch : UITouch) -> TouchSpotView? {
        return touchViews[touch]
    }
    
    func removeViewForTouch (touch : UITouch ) {
        
        newView.removeFromSuperview()
        touchViews.removeValue(forKey: touch)
        
    }
    
    func getTouchDictionaryPosition(touch : UITouch) -> Int?{
        let index = Array(touchViews.keys).firstIndex(of: touch)
        return index
    }
    
    
    func redIntensity(for touch: UITouch){
            
        let actualPosition = touch.location(in: self.view).y
        if(actualPosition > touchPositions[touch]!){
            redColoIntensity +=  0.05
            view.backgroundColor = UIColor(displayP3Red: redColoIntensity, green: greenColoIntensity, blue: blueColoIntensity, alpha: 1)
        } else if (actualPosition < touchPositions[touch]!){
            touchPositions[touch] = actualPosition
            redColoIntensity -= 0.05
            view.backgroundColor = UIColor(displayP3Red: redColoIntensity, green: greenColoIntensity, blue: blueColoIntensity, alpha: 1)
        }
    }
    
    func greenIntensity(for touch: UITouch){
            
        let actualPosition = touch.location(in: self.view).y
        if(actualPosition > touchPositions[touch]!){
            greenColoIntensity +=  0.05
            view.backgroundColor = UIColor(displayP3Red: redColoIntensity, green: greenColoIntensity, blue: blueColoIntensity, alpha: 1)
        } else if (actualPosition < touchPositions[touch]!){
            touchPositions[touch] = actualPosition
            greenColoIntensity -= 0.05
            view.backgroundColor = UIColor(displayP3Red: redColoIntensity, green: greenColoIntensity, blue: blueColoIntensity, alpha: 1)
        }
    }
    
    func blueIntensity(for touch: UITouch){
            
        let actualPosition = touch.location(in: self.view).y
        if(actualPosition > touchPositions[touch]!){
            blueColoIntensity +=  0.05
            view.backgroundColor = UIColor(displayP3Red: redColoIntensity, green: greenColoIntensity, blue: blueColoIntensity, alpha: 1)
        } else if (actualPosition < touchPositions[touch]!){
            touchPositions[touch] = actualPosition
            blueColoIntensity -= 0.05
            view.backgroundColor = UIColor(displayP3Red: redColoIntensity, green: greenColoIntensity, blue: blueColoIntensity, alpha: 1)
        }
    }
}



