//
//  MySliderView.swift
//  iOS-Assignments
//
//  Created by Jerry Huang on 1/26/15.
//  Copyright (c) 2015 Jerry Huang. All rights reserved.
//

import UIKit

class MySliderView: UIView {
    
    var delegate: TestDelegate?
    
    struct CurrentPoint {
        var x: CGFloat
        var y: CGFloat
        var initialized: Bool
    }
    
    private var point = CurrentPoint(x: 0.0, y: 0.0, initialized: true)
    
    private var slider: UISlider!
    private var label: UILabel!
    private var viewWidth, viewHeight, silderWidth: CGFloat!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        viewWidth = self.frame.width
        viewHeight = self.frame.height
        silderWidth = viewWidth*0.8
        
        label = UILabel(frame: CGRect(x: viewWidth/2 - silderWidth/2, y: 0, width: 70, height: 20))
        label.text = "1"
//        label.layer.borderWidth = 1.0
//        label.layer.cornerRadius = 10.0
        
        slider = UISlider(frame: CGRect(x: viewWidth/2 - silderWidth/2, y: 0, width: silderWidth, height: 100))
        slider.minimumValue = 1.0
        slider.maximumValue = 255.0
        slider.value = 1.0
        slider.addTarget(self, action: Selector("sliderValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
        
        self.addSubview(label)
        self.addSubview(slider)

//        var getTapRecognizer = UITapGestureRecognizer(target: self, action: Selector("getTap:"))
//        self.addGestureRecognizer(getTapRecognizer)
    }

    // detect slider value changed
    func sliderValueChanged(sender : UISlider) {
        var value: Float = sender.value
        
        label.text = NSString(format: "%.0f", value)
        label.frame = CGRect(x: viewWidth/2 - silderWidth/2 + CGFloat(value), y: 0, width: 70, height: 20)
        
        delegate?.changeBackground(CGFloat(sender.value), instance: self)
    }

    // Get tap position
    func getTap(recognizer: UITapGestureRecognizer) {
        var message: String = "( \(point.x) , \(point.y) )"
        println(message)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}