//
//  Assignment3ViewController.swift
//  iOS-Assignments
//
//  Created by Jerry Huang on 1/23/15.
//  Copyright (c) 2015 Jerry Huang. All rights reserved.
//

import UIKit

protocol TestDelegate {
    func changeBackground(value: CGFloat, instance: MySliderView)
}

class Assignment3ViewController: UIViewController, TestDelegate {
    
    var windowWidth, windowHeight: CGFloat!
    
    var r: CGFloat = 0.0
    var g: CGFloat = 0.0
    var b: CGFloat = 0.0
    var redSlider, greenSlider, blueSlider: MySliderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        windowWidth = self.view.frame.width
        windowHeight = self.view.frame.height
        self.view.backgroundColor = UIColor.blackColor()

        _init()
    }
    
    func _init() {
        redSlider = MySliderView(frame: CGRect(x: 0, y: 100, width: windowWidth, height: 100))
        greenSlider = MySliderView(frame: CGRect(x: 0, y: 200, width: windowWidth, height: 100))
        blueSlider = MySliderView(frame: CGRect(x: 0, y: 300, width: windowWidth, height: 100))
        
        // ******
        redSlider.delegate = self
        greenSlider.delegate = self
        blueSlider.delegate = self
        
        self.view.addSubview(redSlider)
        self.view.addSubview(greenSlider)
        self.view.addSubview(blueSlider)
    }

    func changeBackground(value: CGFloat, instance: MySliderView) {
        
        switch(true) {
        case self.redSlider == instance:
            r = value
        case self.greenSlider == instance:
            g = value
        case self.blueSlider == instance:
            b = value
        default:
            print("default")
        }
        
        println("=> r: \(r), g: \(g), b: \(b)")
        self.view.backgroundColor = UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1.0)
    }
    
}