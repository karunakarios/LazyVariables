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
    
    lazy var greetMe: String = {  //complex logic executed first time and saved
        [unowned self] () in
        return "Hello \(self.name)!"
        }()
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }
    
    func greet() -> String {
        return "Hello \(self.name)!"
    }

}
