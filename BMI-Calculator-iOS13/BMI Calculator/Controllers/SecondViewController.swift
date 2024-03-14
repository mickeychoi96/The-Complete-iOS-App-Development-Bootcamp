//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by 최유현 on 2023/08/30.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewConroller: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
