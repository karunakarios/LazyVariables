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
        
        let p1 = Person.init(name: "karuna", gender: "Male")

        print("Method: \(p1.greet())")
        
        p1.name = "Kiran"

        print("Method after name change: \(p1.greet())")
        
    }

}

