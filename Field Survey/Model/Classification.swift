//
//  Classification.swift
//  Field Survey
//
//  Created by Andrew W Stoll on 11/1/17.
//  Copyright © 2017 Andrew W Stoll. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
