//
//  ViewController.swift
//  LazyVariables
//
//  Created by Karunakar Bandikatla on 01/08/17.
//  Copyright © 2017 Karunakar Bandikatla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = Person.init(name: "karunakar", gender: "Male")
        print("Method: \(p1.greetMe)")
        
        p1.name = "Karuna"
        print("Method after name change: \(p1.greetMe)")
        
        p1.gender = "Female"
        print("Method after gender change: \(p1.greetMe)")
        
    }

}

