//
//  Person.swift
//  LazyVariables
//
//  Created by Karunakar Bandikatla on 01/08/17.
//  Copyright © 2017 Karunakar Bandikatla. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String {
        didSet {
            print("name change")
            self.greetMe = self.greetAsPerGenderAndName()
        }
    }
    
    var gender: String {
        didSet {
            print("gender change")
            self.greetMe = self.greetAsPerGenderAndName()
        }
    }

    /*
     
     Lazy can not be used on a let
     Lazy properties must have an initializer
     
    */
    
    
    /*
     
     One example of when to use lazy initialization is when the initial value for a property is not known until after the object is initialized.
     
     Complex logic executed first time and saved
     
     Another good time to use lazy initialization is when the initial value for a property is computationally intensive.
     
    */
    
    lazy var greetMe: String = {
        [unowned self] () in
             return self.greetAsPerGenderAndName()
        }()
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
    
    func greetAsPerGenderAndName() -> String {
        if self.gender.lowercased() == "male" {
            return "Hello Mr. \(self.name)!"
        }
        else {
            return "Hello Ms. \(self.name)!"
        }
    }

}
