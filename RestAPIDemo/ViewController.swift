//
//  ViewController.swift
//  RestAPIDemo
//
//  Created by Andrey Kiselev on 26.04.17.
//  Copyright © 2017 Andrey Kiselev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var a = 90
    var b = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //that's i'm test github service in my app
        
        plusNumb()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func plusNumb () -> Int {
        
        let c = a + b
        
        return c
        
    }

}

