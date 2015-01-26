//
//  ViewController.swift
//  silder
//
//  Created by Jerry Huang on 1/21/15.
//  Copyright (c) 2015 Jerry Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var slider: UISlider!
    var label: UILabel!
    var x: Int = 50
    var slideX: CGFloat!
    
    struct currentPoint {
        var x: CGFloat
        var y: CGFloat
        var initialized: Bool
    }
    
    var point = currentPoint(x: 0.0, y: 0.0, initialized: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var windowWidth = self.view.frame.width
        var windowHeight = self.view.frame.height
        slideX = windowWidth/2 - windowWidth*0.7/2
        
        label = UILabel(frame: CGRect(x: slideX - 20, y: 200, width: 70, height: 20))
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 10.0
        label.text = "GG"

        slider = UISlider(frame: CGRect(x: windowWidth/2 - windowWidth*0.7/2, y: 200, width: windowWidth*0.7, height: 100))
        slider.value = 1.0
        slider.maximumValue = 255.0
        slider.addTarget(
            self,
            action: Selector("getSlider:"),
            forControlEvents: UIControlEvents.ValueChanged)

        self.view.addSubview(label)
        self.view.addSubview(slider!)
        
        // Add getTapRecognizer
        var getTapRecognizer = UITapGestureRecognizer(target: self, action: Selector("getTap:"))
        self.view.addGestureRecognizer(getTapRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getSlider(sender : UISlider) {
        var value: CGFloat = CGFloat(sender.value)
        println("Value: \(sender.value)")
        var red: CGFloat = CGFloat(value/255)
        var green: CGFloat = CGFloat(value/255)
        var blue: CGFloat = CGFloat(value/255)
        
        self.view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
//        println(sender.value)
        
        var labelX: CGFloat = slideX-20 + CGFloat(sender.value)
        label.text = "\(Int(red*100)), \(Int(green*100)), \(Int(blue*100))"
        label.frame = CGRect(x: labelX, y: 200, width: 100, height: 20)
    }
    
    // Get Tap
    func getTap(recognizer: UITapGestureRecognizer) {
        var message: String = "( \(point.x) , \(point.y) )"
        println(message)
    }
}

