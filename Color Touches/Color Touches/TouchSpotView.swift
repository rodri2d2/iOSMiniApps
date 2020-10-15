//
//  TouchSpotView.swift
//  Color Touches
//
//  Created by Rodrigo Candido on 12/10/2020.
//

import UIKit



/// The TouchSpotView represents the custom subviews
/// that draw the gray circles onscreen.
/// TouchSpotView maintains its circular shape by setting the cornerRadius property
/// of the layer each time its bounds property changes.
class TouchSpotView: UIView {
    
    
    override var bounds: CGRect{
        get { return super.bounds }
        set(newBounds) {
            super.bounds = newBounds
            layer.cornerRadius = newBounds.size.width / 2.0
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemRed
    }

    
    
}
