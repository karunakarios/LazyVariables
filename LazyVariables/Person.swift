//
//  Person.swift
//  LazyVariables
//
//  Created by Karunakar Bandikatla on 01/08/17.
//  Copyright © 2017 Karunakar Bandikatla. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String
    var gender: String
   
    /*
     
     Lazy can not be used on a let
     Lazy properties must have an initializer
     
    */
    
    
    /*
     
     One example of when to use lazy initialization is when the initial value for a property is not known until after the object is initialized.
     
     Complex logic executed first time and saved
     
     Another good time to use lazy initialization is when the initial value for a property is computationally intensive.
     
    */
    
    lazy var greetPrefix: String = {
        [unowned self] () in
        if self.gender.lowercased() == "male" {
            return "Mr."
        }
        else {
            return "Ms."
        }
        }()
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
    
    func greet() -> String {
        return "Hello \(self.greetPrefix) \(self.name)!"
    }

}
