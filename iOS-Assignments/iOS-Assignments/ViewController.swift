//
//  ViewController.swift
//  iOS-Assignments
//
//  Created by Jerry Huang on 1/23/15.
//  Copyright (c) 2015 Jerry Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let btnWidth = 200, btnHeight = 50
    
    var btnAssignment1, btnAssignment2, btnAssignment3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _init()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func _init() {
        var screenWidth = Int(self.view.frame.width)
        var screenHeight = Int(self.view.frame.height)
        var centerWidth = Int(screenWidth/2 - btnWidth/2)
        
        btnAssignment1 = UIButton(frame: CGRect(x: centerWidth, y: 120, width: btnWidth, height: btnHeight))
        btnAssignment2 = UIButton(frame: CGRect(x: centerWidth, y: 200, width: btnWidth, height: btnHeight))
        btnAssignment3 = UIButton(frame: CGRect(x: centerWidth, y: 280, width: btnWidth, height: btnHeight))
        
        btnAssignment1.setTitle("Assignment1", forState: UIControlState.Normal)
        btnAssignment2.setTitle("Assignment2", forState: UIControlState.Normal)
        btnAssignment3.setTitle("Assignment3", forState: UIControlState.Normal)
        
        btnAssignment1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btnAssignment2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btnAssignment3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        btnAssignment1.layer.borderWidth = 1
        btnAssignment2.layer.borderWidth = 1
        btnAssignment3.layer.borderWidth = 1
        
        btnAssignment1.layer.cornerRadius = 8.0
        btnAssignment2.layer.cornerRadius = 8.0
        btnAssignment3.layer.cornerRadius = 8.0
        
        btnAssignment1.tag = 1
        btnAssignment2.tag = 2
        btnAssignment3.tag = 3
        
        btnAssignment1.addTarget(self, action: Selector("btnClicked:"), forControlEvents: UIControlEvents.TouchDown)
        btnAssignment2.addTarget(self, action: Selector("btnClicked:"), forControlEvents: UIControlEvents.TouchDown)
        btnAssignment3.addTarget(self, action: Selector("btnClicked:"), forControlEvents: UIControlEvents.TouchDown)
        
        self.view.addSubview(btnAssignment1)
        self.view.addSubview(btnAssignment2)
        self.view.addSubview(btnAssignment3)
    }
    
    func btnClicked(sender: UIButton) {
        switch sender.tag {
        case 1:
            print(1)
        case 2:
            print(2)
        case 3:
            var assignment3ViewController = Assignment3ViewController()
            self.navigationController?.pushViewController(assignment3ViewController, animated: true)
        default:
            print("GG")
            
        }
    }
}

